clear;

addpath('functions')
addpath(genpath('datasets'))

userIdSet = [1:2, 4:9];
cupIdSet = [5];

nRepeat = 50;

for userId = userIdSet
    for cupId = cupIdSet
        disp(['=================', num2str([userId, cupId]), '=================']);

        %% Configurations
        % Configurations for data
        config.data.ch = 1;
        config.data.rate = 48000; 
        config.data.unit = 20; 
        config.data.nLoc = 4;
        config.data.nTrialPerLoc = 10;
        config.data.recommendedLeng = config.data.rate * .6;

        % Load file and cup configurations and update config.data (if needed)
        [file, cup, config] = func_loadBasicParams(cupId, config);

        config.data.nTrial = config.data.nLoc * config.data.nTrialPerLoc; 
        config.data.nData = (ceil(cup.maxAmount / config.data.unit) + 1) * config.data.nTrial; 

        % Configurations for calibration
        config.calib.nTrain = min(2, config.data.nData / config.data.nTrial);
        config.calib.locSet = [1, 2, 3, 4];
        config.calib.nTrialPerTrain = min([5, config.data.nTrialPerLoc * length(config.calib.locSet)]);
        config.calib.initialN = 2;

        % Configurations for detection
        config.detect.order = 4;
        config.detect.energyWidth = config.data.rate * .01;
        config.detect.searchRange = config.data.rate * .4;

        config.detect.threshold = [.5, .01]; % Early removal

        % Configurations for feature extraction
        config.extract.nfft = config.data.rate * 1; % Zero padding
        config.extract.f = (1:config.extract.nfft/2) ./ config.extract.nfft * config.data.rate;
        config.extract.marginRatio = .01; 

        % Configurations for measurement
        config.eval.locSet = [1, 2, 3, 4];
        config.eval.nTrial = min([5, config.data.nTrialPerLoc * length(config.eval.locSet)]);
        config.eval.nRepeat = 1;

        % Configurations for result
        config.result.path = './results/';

        %% Load calibration data
        switch cup.id
            case 1
                load('1_1_glass.mat');
            case 5
                load('5_5_ceramic.mat');
            case 8
                load('8_8_stainless.mat');
        end

        % Crop data (if needed)
        if length(data(1).raw) > config.data.recommendedLeng
            for cnt = 1:length(data)
                data(cnt).raw = data(cnt).raw(config.data.rate * .1 + (1:config.data.recommendedLeng), :);
            end
        end

        idx = [data(:).amount] == 0 | [data(:).amount] == cup.maxAmount;
        train = data(idx);    

        %% Load test data
        load([num2str(cup.id), '_user', num2str(userId), '.mat']);

        test = data;

        %% Start iterations
        result = struct();
        result.raw = [];
        tic
        for cnt = 1:nRepeat
            if rem(cnt, 10) == 0
                disp([num2str(cnt), ':', num2str(toc),  ', ', num2str(mean(abs(result.raw(:, 1) - result.raw(:, 2))))])
            end
            % Select calibration data
            curTrain = func_selectCalibrationData(train, config);            
            curTest = test;
            config.eval.amountSet = unique([curTest(:).amount]);

            % Conduct calibration
            [b, a] = butter(config.detect.order, [config.calib.fL, config.calib.fH] / config.data.rate * 2, 'bandpass');
            curTrain = func_extractFeatures(curTrain, b, a, config);
            calib = func_conductCalibration(curTrain, cup, config);

            % Select evaluation data
            [b, a] = butter(config.detect.order, ...
            [min(calib.fL) * (1 - config.extract.marginRatio), max(calib.fH) * (1 + config.extract.marginRatio)] / config.data.rate * 2, ...
            'bandpass');

            curTest = func_extractFeatures(curTest, b, a, config);    
            evaluate = func_selectEvaluationData(curTest, config);

            % Conduct measurement
            evaluate = func_conductMeasurement(evaluate, cup, calib, config);

            result.raw = [result.raw; [[evaluate(:).amount]', [evaluate(:).eAmount]']];
        end

        result.err = abs(result.raw(:, 1) - result.raw(:, 2));
        result.avg = mean(result.err);
        result.std = std(result.err);

        disp('==== Results =====');
        disp([result.avg, result.std]);

    %     mkdir(config.result.path);
    %     save([config.result.path, file.name, '_result.mat'], 'result');
    end
end


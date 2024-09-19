function [curTrain, rest] = func_selectCalibrationData(train, config)
idx = [];
for cnt = 1:config.calib.nTrain
    idxFilter = false(1, config.data.nTrial);
    for cnt2 = config.calib.locSet
        idxFilter((cnt2 - 1) * config.data.nTrialPerLoc + (1:config.data.nTrialPerLoc)) = true;
    end
    
    idx = [idx, randsample(find(idxFilter), config.calib.nTrialPerTrain) ...
        + (cnt - 1) * config.data.nTrial];
end

idxFilter = false(1, length(train));
idxFilter(idx) = true;

curTrain = train(idxFilter);
rest = train(~idxFilter);
end


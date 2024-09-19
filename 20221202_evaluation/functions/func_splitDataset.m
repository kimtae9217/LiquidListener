function [train, test] = func_splitDataset(data, config, isCalibPointEval)
idx = ceil(linspace(1, config.data.nData / config.data.nTrial, config.calib.nTrain)); % Train data 선형 벡터 생성
idxFilter = false(1, config.data.nData); % 전체 0 
for cnt = idx
    idxFilter((cnt - 1) * config.data.nTrial + (1:config.data.nTrial)) = true;
end

train = data(idxFilter);

if nargin == 3 && isCalibPointEval 
    idx = ceil(linspace(1, config.data.nData / config.data.nTrial, 10)); % Train data 선형 벡터 생성
    idxFilter = false(1, config.data.nData); % 전체 0 
    for cnt = idx
        idxFilter((cnt - 1) * config.data.nTrial + (1:config.data.nTrial)) = true;
    end 
end


test = data(~idxFilter);

end


function [calib] = func_conductCalibration(train, cup, config)
calib = struct();
for cnt = [1, config.calib.nTrain, 2:config.calib.nTrain - 1]
    curIdx = (cnt - 1) * config.calib.nTrialPerTrain ...
        + (1:config.calib.nTrialPerTrain);
    
    calib.amount(cnt) = train(curIdx(1)).amount;
    
    calib.spec(cnt, :) = mean([train(curIdx).spec], 2);
   
    if cnt == 1
        [~, calib.f(cnt)] = max(calib.spec(cnt, :));
    elseif cnt == config.calib.nTrain
        [~, calib.f(cnt)] = max(calib.spec(cnt, 1:calib.f(1)));
    else
        [~, calib.f(cnt)] = max(calib.spec(cnt, calib.f(config.calib.nTrain):calib.f(1)));
        calib.f(cnt) = calib.f(cnt) + calib.f(config.calib.nTrain) - 1;
    end
end

calib.f = config.extract.f(calib.f);
calib.fH = calib.f(1);
calib.fL = calib.f(end);
calib.n = config.calib.initialN;

calib.french = func_computeFrenchParams(calib.amount', calib.f', calib.fH, cup.maxAmount, calib.n); % A.P French's Formula

end


function [evaluate] = func_conductMeasurement(evaluate, cup, calib, config, noisy)

for cnt = 1:length(evaluate)

    if nargin < 4 && noisy == false
        [~, evaluate(cnt).f] = max(evaluate(cnt).spec(ceil(calib.fL * config.extract.nfft / config.data.rate):ceil(calib.fH * config.extract.nfft / config.data.rate)));    
        evaluate(cnt).f = evaluate(cnt).f + ceil(calib.fL * config.extract.nfft / config.data.rate - 1);
    else
        [~, evaluate(cnt).f] = max(evaluate(cnt).spec);    
    end
    evaluate(cnt).f = config.extract.f(evaluate(cnt).f);          
    
    evaluate(cnt).eAmount = func_estimateAmountUsingFrench(calib.french.f.a, ...
         evaluate(cnt).f, calib.fH, cup.maxAmount, calib.french.n);                
end

end


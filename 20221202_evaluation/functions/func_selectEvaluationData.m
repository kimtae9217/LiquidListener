function [evaluate] = func_selectEvaluationData(test, config)
evaluate = struct();

idxFilter = false(1, config.data.nTrial);
for cnt = 1:length(config.eval.locSet)
    idxFilter((cnt - 1) * config.data.nTrialPerLoc ...
        + (1:config.data.nTrialPerLoc)) = true;
end

for cnt = 1:length(config.eval.amountSet)    
    cur = test([test(:).amount] == config.eval.amountSet(cnt));
    cur(~idxFilter) = [];
    
    for cnt2 = 1:config.eval.nRepeat
        idx = (cnt - 1) * config.eval.nRepeat + cnt2;
        evaluate(idx).amount = config.eval.amountSet(cnt) / config.data.density;
        
        selected = randperm(length(cur), config.eval.nTrial);
        evaluate(idx).spec = mean([cur(selected).spec], 2);    
    end
end
end


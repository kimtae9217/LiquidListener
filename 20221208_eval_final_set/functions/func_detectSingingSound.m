function [detected, energy] = func_detectSingingSound(data, b, a, config)
    filtered = filtfilt(b, a, data);
        
    energy = func_calcEnergy(filtered, config.detect.energyWidth);
    energy = energy ./ max(energy);
    [~, mIdx] = max(energy);
               
    curSearchRange = mIdx + 1:min([length(energy), mIdx + config.detect.searchRange]);    
    
    curRange = find(energy(curSearchRange) <= config.detect.threshold(1) ...
            & energy(curSearchRange) >= config.detect.threshold(2));
    curRange = curRange + mIdx - config.detect.energyWidth;
    
    if isempty(curRange)
        curRange = 1:length(filtered);
    end
    detected = filtered(curRange(1):curRange(end));
end


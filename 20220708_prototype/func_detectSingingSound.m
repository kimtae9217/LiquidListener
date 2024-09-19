function [detected, energy] = func_detectSingingSound(data, b, a, config)
    filtered = filtfilt(b, a, data);
        
    energy = func_calcEnergy(filtered, config.detect.energyWidth);
    energy = energy ./ max(energy);
    [~, mIdx] = max(energy);
       
    curRange = find(energy(mIdx + (1:config.detect.searchRange)) <= config.detect.threshold(1) ...
        & energy(mIdx + (1:config.detect.searchRange)) >= config.detect.threshold(2));
    curRange = curRange + mIdx - config.detect.energyWidth;
    
    detected = filtered(curRange(1):curRange(end));
end


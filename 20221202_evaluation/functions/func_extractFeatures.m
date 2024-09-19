function [data] = func_extractFeatures(data, b, a, config)

for cnt = 1:length(data)
    cur = data(cnt).raw(:, config.data.ch);       
    [data(cnt).detected, data(cnt).energy] = func_detectSingingSound(cur, b, a, config);
    
    tmp = abs(fft(data(cnt).detected, config.extract.nfft));
    data(cnt).spec = tmp(2:config.extract.nfft / 2 + 1);
end

end


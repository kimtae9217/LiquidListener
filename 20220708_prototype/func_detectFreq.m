function freq = func_detectFreq(spec, f, sRange)

rangeInFFT = find(f >= sRange(1) & f <= sRange(2));

[~, fPeak] = max(spec(rangeInFFT));
fPeak = fPeak + rangeInFFT(1) - 1;

freq = f(fPeak);

end


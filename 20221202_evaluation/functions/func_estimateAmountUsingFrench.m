function estimated = func_estimateAmountUsingFrench(a, freq, f0, maxAmount, n)

estimated = max(0, (f0 / freq)^2 - 1) / a;
estimated = min(maxAmount, estimated^(1/(n + 1)) * maxAmount);

end


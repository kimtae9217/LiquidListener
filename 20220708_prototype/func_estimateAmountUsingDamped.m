function estimated = func_estimateAmountUsingDamped(a, freq, f0, maxAmount)

estimated = min(maxAmount, sqrt(max(0, f0^2 - freq^2)) ./ a); % m = x = y / a

end


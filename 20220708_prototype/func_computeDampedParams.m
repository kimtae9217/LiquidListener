function damped = func_computeDampedParams(amount, freq, f0)
damped.model = fittype('a*x'); % y = ax

damped.x = amount; % x = m
damped.y = sqrt(max(f0^2 - freq.^2, 0)); % y = sqrt(f0^2 - f^2)

% Line fitting
damped.f = fit(damped.x, damped.y, damped.model, 'StartPoint', 0);
end


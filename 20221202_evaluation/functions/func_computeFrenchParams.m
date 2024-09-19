function french = func_computeFrenchParams(amount, freq, f0, maxAmount, n)
if nargin < 5
    n = 2;
end


if length(amount) <= 2
    french.model = 'a*x + 1';
    french.x = (amount ./ maxAmount).^(n + 1);
    french.y = max(1, (f0 ./ freq).^2);

    french.f = fit(french.x, french.y, french.model, 'StartPoint', 0);
    french.n = n;
else
%     french.model = 'a*x + 1';
%     french.x = (amount ./ maxAmount).^(n + 1);
%     french.y = max(1, (f0 ./ freq).^2);
% 
%     french.f = fit(french.x, french.y, french.model, 'StartPoint', 0);
%     french.n = n;
    
    french.model = 'a*x^(n + 1) + 1';
    
    french.x = amount ./ maxAmount;
    french.y = max(1, (f0 ./ freq).^2);
    
    french.f = fit(french.x, french.y, french.model, 'StartPoint', [0, 1.5], 'lower', [-Inf, 1.5], 'upper', [Inf, 2.0]);
    french.n = french.f.n;
end

end


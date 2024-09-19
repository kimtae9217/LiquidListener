clear;

evalId = [77:82, 8, 84, 10];

cur = [];
for cnt = evalId
    config = struct();
    [file, cup, config] = func_loadBasicParams(cnt, config);

    load(['./results/', file.name, '_result.mat']);


    tmp = result.raw;
    tmp(:, 3) = result.raw(:, 1) ./ cup.maxAmount;
    tmp(:, 4) = result.err;
    
    cur(end + (1:length(result.raw)), :) = tmp;    
end

all = [];
low = [];
high = [];

thr = 0.2;

[all(:, 2), all(:, 1)]= ecdf(cur(:, 4));
[low(:, 2), low(:, 1)]= ecdf(cur(cur(:, 3) <= thr, 4));
[high(:, 2), high(:, 1)]= ecdf(cur(cur(:, 3) > thr, 4));

unit = [0.2, 1];
errors = zeros(length(unit), 2);

for cnt = 1:length(unit)
    if cnt == 1
        idx = cur(:, 3) <= unit(cnt);
    else
        idx = cur(:, 3) <= unit(cnt) & cur(:, 3) > unit(cnt - 1);
    end
    
    errors(cnt, 1) = mean(cur(idx, 4));
    errors(cnt, 2) = std(cur(idx, 4));
end


figure(1)
clf
subplot 211
hold on
plot(all(:, 1), all(:, 2))
plot(low(:, 1), low(:, 2))
plot(high(:, 1), high(:, 2))

subplot 212
stem(errors(:, 1))
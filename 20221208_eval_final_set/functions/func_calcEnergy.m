function [energy] = func_calcEnergy(data, interval)
    lData = length(data);
    energy = zeros(1, lData);
    for cnt = interval:lData
        if cnt == interval
            energy(cnt) = sum(data(cnt - interval + 1:cnt).^2);
        else
            energy(cnt) = energy(cnt - 1) - data(cnt - interval)^2 + data(cnt)^2;
        end
    end
end
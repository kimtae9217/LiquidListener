%% 3개의 데이터가 한꺼번에 띄워짐

clear

ch = 2;
rate = 48000;
nPeaksPerVol = 2; % peak 개수

nVol = 36; 

intervalT = .5 * rate;

% load('data.mat');
% 
% label = {'s0', 's1', 's2', 's3', 's4', 's5', 's6', 's7', 's8'};

pDistance = .2 * rate;
pHeight = .5;

intervalL = rate * 0.001;

eData = [];
formatspec = "test\\1cup%d-%d.wav";
cnt3 = 1; % peak plot을 위한 변수
for cnt = 1:10:351
    i = cnt -1; % 0부터 시작
    
    for j = 1:1:nPeaksPerVol
        
        str = sprintf(formatspec, i,j);
        [cur, fs] = audioread(str);      
        cur = cur(:, ch);
        cur = cur ./ max(abs(cur)); % Normalization
        [~, loc] = findpeaks(cur, 'MinPeakDistance', pDistance, 'MinPeakHeight', pHeight);    
        
        for cnt2 = 1:length(loc)
            
            range = max(1, loc(cnt2) - intervalL) + (0:intervalT - 1);
            
            eData(end + 1, :) = cur(range); 
%             figure(cnt3)
%             plot(eData(cnt3,:))
%             cnt3=cnt3+1;
             
        end
    end
%     disp(cnt)
end


% load('eData.mat')
% for i=1:size(eData,1)
%     figure(i)
%     plot(eData(i,:))
% end


nfft = 2^nextpow2(intervalT);

% % 3cup
% lf = 1000;
% hf = 3500; 

% % 2cup
% lf = 200;
% hf = 1500;

% 1cup
lf = 500;
hf = 1500;

lfCut = ceil(lf * nfft / rate);
hfCut = ceil(hf * nfft / rate);

figure(1)
% clf
set(gcf, 'Visible', 'on')
for cnt = 1:nVol
    subplot(nVol, 1, cnt)
    hold on
    for cnt2 = 1:nPeaksPerVol
        idx = (cnt - 1) * nPeaksPerVol + cnt2;
        
        tmp = abs(fft(eData(idx, :), nfft));
        tmp = tmp(lfCut:hfCut);        
        
%         subplot(nVol, nPeaksPerVol, (cnt - 1) * nPeaksPerVol + cnt2)
%         findpeaks(tmp)
        findpeaks(tmp,'MinPeakProminence',5)
%         plot(tmp)
        [~, maxFreq] = max(findpeaks(tmp));
    end
end


% xlabel("f (Hz)")
% ylabel("Amplitude")

%% 데이터 한 개씩 띄우기

clc; clear; close all;
load('1cup.mat')
rate = 48000;
intervalT = .5 * rate;
nVol = 36; % volume에 대해 분석
nPeaksPerVol = 2; % peak 개수
colorOrder=['r' 'g' 'b' 'k']

mMonitor=groot
Width=mMonitor.ScreenSize(3)
Height=mMonitor.ScreenSize(4)

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

lfCut = ceil(lf * nfft / rate); % 
hfCut = ceil(hf * nfft / rate); % 

maxFreq=[];
for cnt2=1:nPeaksPerVol
    f=figure(cnt2)
    f.Position=[(Width/nPeaksPerVol)*(cnt2-1) 0 Width/nPeaksPerVol Height];
    MAXX=1708; %constant라 고정해도 될듯;
    for cnt=1:nVol
        subplot(nVol,1,cnt)
        idx = (cnt - 1) * nPeaksPerVol + cnt2;
        tmp = abs(fft(eData(idx, :), nfft));
        tmp = tmp(lfCut:hfCut);
        findpeaks(tmp,'MinPeakProminence',5)
%         findpeaks(tmp);
%         plot(tmp)
%        plot(tmp,[colorOrder(1,1+mod(nPeaksPerVol,4))]);
%         [pks,locs]=findpeaks(tmp(1:MAXX));
        [pks,locs]=findpeaks(tmp);
        [~,I]=max(pks); 
        disp(locs(I))
        maxFreq(cnt,cnt2)=locs(I);
%         MAXX=max(locs(I))+50;
%         if(cnt==1)
%             MAXX=max(locs(I))+50;
%             disp(MAXX)
%         end
    end
end

%% Frequency peak 뽑기 

% xDomain=[0:10:390];
% xDomain=xDomain/390;
% 
% figure(9)
% subplot(3,1,1)
% plot(xDomain,maxFreq(:,1))
% subplot 312
% plot(xDomain,maxFreq(:,2))
% subplot 313
% hold on
% plot(xDomain,maxFreq(:,1),'r')
% plot(xDomain,maxFreq(:,2),'b')
% 
% 
% temp(:,1)=mean(maxFreq(:,1:2),2) % average
       
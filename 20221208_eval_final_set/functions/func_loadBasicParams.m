function [file, cup, config] = func_loadBasicParams(evalId, config)

file = struct();
file.postfix = '';

cup = struct();

config.data.density = .9997;
switch evalId
%%%%%%%%%%%%%%%%%%%[Container]%%%%%%%%%%%%%%%%%%%
    case 1
        cup.id = 1;
        file.postfix = 'glass';  
        config.data.unit = 40;        
    case 2
        cup.id = 2;
        file.postfix = 'glass';  
        config.data.unit = 20;        
    case 3
        cup.id = 3;
        file.postfix = 'glass';  
        config.data.unit = 40;                   
    case 5
        cup.id = 5;
        file.postfix = 'ceramic';  
        config.data.unit = 40; 

    case 6
        cup.id = 6;
        file.postfix = 'ceramic';  
        config.data.unit = 20; 

    case 7
        cup.id = 7;
        file.postfix = 'ceramic';  
        config.data.unit = 20;     
    case 8
        cup.id = 8;
        file.postfix = 'stainless';
        config.data.unit = 20;    
    case 77
        cup.id = 1;
        file.postfix = 'glass';  
        config.data.unit = 40;        
    case 78
        cup.id = 2;
        file.postfix = 'glass';       
        config.data.unit = 40;        
    case 79
        cup.id = 3;
        file.postfix = 'glass';       
        config.data.unit = 40;        
    case 80
        cup.id = 5;
        file.postfix = 'ceramic';
        config.data.unit = 40;        
    case 81
        cup.id = 6;
        file.postfix = 'ceramic';     
        config.data.unit = 40;        
    case 82
        cup.id = 7;
        file.postfix = 'ceramic';   
        config.data.unit = 40;        
    
    case 83
        cup.id = 8;
        file.postfix = 'stainless';
        config.data.unit = 40;        
    case 84
        cup.id = 9;
        file.postfix = 'stainless';   
        config.data.unit = 20;        
    case 85
        cup.id = 10;
        file.postfix = 'stainless'; 
        config.data.unit = 40;        
    case 10
        cup.id = 10;
        file.postfix = 'stainless'; 
        config.data.unit = 20;

    case 129 % Plastic 2
        cup.id = 13;
        file.postfix = 'plastic';
        config.data.unit = 40;
    case 130 % stoneware
        cup.id = 14;
        file.postfix = 'stoneware';
        config.data.unit = 40; 

    case 131 % 410ml thermos
        cup.id = 15;
        file.postfix = 'stainless';   
        config.data.unit = 40;  

    case 132 % stainless mug
        cup.id = 16;
        file.postfix = 'stainless'; 
        config.data.unit = 40;

    case 133 % big container 2L
        cup.id = 17;
        file.postfix = 'stainlessBig'; 
        config.data.unit = 100; 

    case 134 % Ceramic 1300ml
        cup.id = 18;
        file.postfix = 'ceramicBig'; 
        config.data.unit = 50;

    case 154 % glass 1L
        cup.id = 21;
        file.postfix = 'glassBig'; 
        config.data.unit = 100;        
     
    case 155 % waterjug 4L
        cup.id = 19;
        file.postfix = 'stainlessBig'; 
        config.data.unit = 400;         

%%%%%%%%%%%%%%%%%%%[Liquid]%%%%%%%%%%%%%%%%%%%        
    case 18
        cup.id = 1;
        file.postfix = 'coke';
        config.data.unit = 40;  
        config.data.density = 1.04;        
    case 19
        cup.id = 1;
        file.postfix = 'milk';
        config.data.unit = 40;      
        config.data.density = 1.037;        
    case 20
        cup.id = 1;
        file.postfix = 'vodka';
        config.data.unit = 40;        
        config.data.density = 0.95;
    case 21
        cup.id = 1;
        file.postfix = 'water_hot';
        config.data.unit = 40;        
    case 22
        cup.id = 1;
        file.postfix = 'water_cold';
        config.data.unit = 40;

    case 156
        cup.id = 1;
        file.postfix = 'syrup';
        config.data.unit = 40;  
        config.data.density = 1.4; 

    case 157
        cup.id = 1;
        file.postfix = 'oil';
        config.data.unit = 40;      
        config.data.density = 0.9;

    case 159
        cup.id = 1;
        file.postfix = 'dishwashing';
        config.data.unit = 40;  
        config.data.density = 1.02;

    case 160
        cup.id = 1;
        file.postfix = 'detergent';
        config.data.unit = 40;      
        config.data.density = 1.035; 

    case 161
        cup.id = 1;
        file.postfix = 'ethanol';
        config.data.unit = 40;  
        config.data.density = 0.83;
       
%%%%%%%%%%%%%%%%%%%[Location and Tapping Style]%%%%%%%%%%%%%%%%%%%        
    case 24
        cup.id = 1;
        file.postfix = 'rim';
        config.data.unit = 40;        
    case 25
        cup.id = 1;
        file.postfix = 'mid';
        config.data.unit = 40;            
    case 26
        cup.id = 1;
        file.postfix = 'low';
        config.data.unit = 40;       
%     case 136
%         cup.id = 1;
%         file.postfix = 'horizontal';
%         config.data.unit = 40;       
%     case 137
%         cup.id = 1;
%         file.postfix = 'vertical';
%         config.data.unit = 40;
    case 165
        cup.id = 5;
        file.postfix = 'rim';
        config.data.unit = 40;      
    case 166
        cup.id = 5;
        file.postfix = 'mid';
        config.data.unit = 40;  
    case 167
        cup.id = 5;
        file.postfix = 'low';
        config.data.unit = 40; 

    case 168
        cup.id = 15;
        file.postfix = 'rim';
        config.data.unit = 40;      
    case 169
        cup.id = 15;
        file.postfix = 'mid';
        config.data.unit = 40;  
    case 170
        cup.id = 15;
        file.postfix = 'low';
        config.data.unit = 40;  
%%%%%%%%%%%%%%%%%%%[Tool and Device]%%%%%%%%%%%%%%%%%%%        
    case 12
        cup.id = 1;
        file.postfix = 'pen';
        config.data.unit = 40;        
    case 13
        cup.id = 1;
        file.postfix = 'chopstick';
        config.data.unit = 40;            
    case 14
        cup.id = 1;
        file.postfix = 'nail';
        config.data.unit = 40;       
    case 15
        cup.id = 1;
        file.postfix = 'a23';
        config.data.unit = 40;       
    case 16
        cup.id = 1;
        file.postfix = 'fold';
        config.data.unit = 40;   
    case 135
        cup.id = 1;
        file.postfix = 'silicon';
        config.data.unit = 40;          
%%%%%%%%%%%%%%%%%%%[Noise]%%%%%%%%%%%%%%%%%%%        
    case 34
        cup.id = 1;
        file.postfix = '50dB';
        config.data.unit = 40;     
    case 35
        cup.id = 1;
        file.postfix = '60dB';
        config.data.unit = 40;       
    case 36
        cup.id = 1;
        file.postfix = '70dB';
        config.data.unit = 40;        
    case 37
        cup.id = 5;
        file.postfix = '50dB';
        config.data.unit = 40;     
    case 38
        cup.id = 5;
        file.postfix = '60dB';
        config.data.unit = 40;       
    case 39
        cup.id = 5;
        file.postfix = '70dB';
        config.data.unit = 40;        
    case 40
        cup.id = 8;
        file.postfix = '50dB';
        config.data.unit = 40;     
    case 41
        cup.id = 8;
        file.postfix = '60dB';
        config.data.unit = 40;       
    case 42
        cup.id = 8;
        file.postfix = '70dB';
        config.data.unit = 40;           
    case 63
        cup.id = 1;
        file.postfix = '50dB';
        config.data.unit = 40;     
    case 64
        cup.id = 1;
        file.postfix = '60dB';
        config.data.unit = 40;       
    case 65
        cup.id = 1;
        file.postfix = '70dB';
        config.data.unit = 40;         
    case 66
        cup.id = 5;
        file.postfix = '50dB';
        config.data.unit = 40;     
    case 67
        cup.id = 5;
        file.postfix = '60dB';
        config.data.unit = 40;       
    case 68
        cup.id = 5;
        file.postfix = '70dB';
        config.data.unit = 40;         
    case 69
        cup.id = 8;
        file.postfix = '50dB';
        config.data.unit = 40;     
    case 70
        cup.id = 8;
        file.postfix = '60dB';
        config.data.unit = 40;       
    case 71
        cup.id = 8;
        file.postfix = '70dB';
        config.data.unit = 40; 
        
    case 93
        cup.id = 9;
        file.postfix = '50dB';
%         config.data.unit = 40;     
    case 94
        cup.id = 9;
        file.postfix = '60dB';
%         config.data.unit = 40;       
    case 95
        cup.id = 9;
        file.postfix = '70dB';
%         config.data.unit = 40; 

    case 96
        cup.id = 9;
        file.postfix = '50dB';
%         config.data.unit = 40;     
    case 97
        cup.id = 9;
        file.postfix = '60dB';
%         config.data.unit = 40;       
    case 98
        cup.id = 9;
        file.postfix = '70dB';
%         config.data.unit = 40; 

%%%%%%%%%%%%%%% 추가 실험 set 
    case 138
        cup.id = 1;
        file.postfix = 'office';
        config.data.unit = 40;     
    case 139
        cup.id = 5;
        file.postfix = 'office';
        config.data.unit = 40;       
    case 140
        cup.id = 15;
        file.postfix = 'office';
        config.data.unit = 40;         
    case 141
        cup.id = 1;
        file.postfix = 'park';
        config.data.unit = 40;     
    case 142
        cup.id = 5;
        file.postfix = 'park';
        config.data.unit = 40;       
    case 143
        cup.id = 15;
        file.postfix = 'park';
        config.data.unit = 40;
    case 144
        cup.id = 1;
        file.postfix = 'street';
        config.data.unit = 40;     
    case 145
        cup.id = 5;
        file.postfix = 'street';
        config.data.unit = 40;       
    case 146
        cup.id = 15;
        file.postfix = 'street';
        config.data.unit = 40;        

%%%%%%%%%%%%%%%%%%%[Placement]%%%%%%%%%%%%%%%%%%%        
    case 72
        cup.id = 5;
        file.postfix = 'body';
        config.data.unit = 40;     
    case 73
        cup.id = 5;
        file.postfix = 'handle';
        config.data.unit = 40;       
    case 74
        cup.id = 5;
        file.postfix = 'coaster1';
        config.data.unit = 40;     
    case 75
        cup.id = 5;
        file.postfix = 'coaster2';
        config.data.unit = 40;       
    case 76
        cup.id = 5;
        file.postfix = 'coaster3';
        config.data.unit = 40;       
    case 27
        cup.id = 1;
        file.postfix = '5cm';
        config.data.unit = 40;
    case 29
        cup.id = 1;
        file.postfix = '20cm';
        config.data.unit = 40;        
    case 30
        cup.id = 1;
        file.postfix = '30cm';
        config.data.unit = 40;
    case 31
        cup.id = 1;
        file.postfix = '40cm';
        config.data.unit = 40; 
    case 32
        cup.id = 1;
        file.postfix = '50cm';
        config.data.unit = 40;

%%%%%%%%%% 새로운 실험 set 추가

    case 126 % 유리 바닥
        cup.id = 3;
        file.postfix = 'glass';
        config.data.unit = 40; 
    case 127 % 벽돌
        cup.id = 3;
        file.postfix = 'brick';
        config.data.unit = 40; 
    case 128 % 담요
        cup.id = 3;
        file.postfix = 'comforter';
        config.data.unit = 40; 

    case 162 % 유리 바닥
        cup.id = 5;
        file.postfix = 'glass';
        config.data.unit = 40; 
    case 163 % 벽돌
        cup.id = 5;
        file.postfix = 'brick';
        config.data.unit = 40; 
    case 164 % 담요
        cup.id = 5;
        file.postfix = 'comforter';
        config.data.unit = 40; 

    case 176 % 유리 바닥
        cup.id = 16;
        file.postfix = 'glass';
        config.data.unit = 40; 
    case 177 % 벽돌
        cup.id = 16;
        file.postfix = 'brick';
        config.data.unit = 40; 
    case 178 % 담요
        cup.id = 16;
        file.postfix = 'comforter';
        config.data.unit = 40;

    case 179
        cup.id = 16;
        file.postfix = 'body';
        config.data.unit = 40; 
    case 180 
        cup.id = 16;
        file.postfix = 'handle';
        config.data.unit = 40; 
    case 181 
        cup.id = 16;
        file.postfix = 'silicone';
        config.data.unit = 40; 
    case 182
        cup.id = 16;
        file.postfix = 'melamine';
        config.data.unit = 40; 
    case 183
        cup.id = 16;
        file.postfix = 'paper';
        config.data.unit = 40; 
  
%%%%%%%%%%%%%%%%%%%[Time]%%%%%%%%%%%%%%%%%%%                      
    case 52
        cup.id = 1;
        file.postfix = '1day';
        config.data.unit = 40;     
    case 53
        cup.id = 1;
        file.postfix = '2day';
        config.data.unit = 40;       
    case 54
        cup.id = 1;
        file.postfix = '3day';
        config.data.unit = 40;
    case 55
        cup.id = 1;
        file.postfix = '5day_2';
        config.data.unit = 40;     
    case 56
        cup.id = 1;
        file.postfix = '7day';
        config.data.unit = 40;                 
    case 57
        cup.id = 5;
        file.postfix = '5day';
        config.data.unit = 40;     
    case 58
        cup.id = 5;
        file.postfix = '6day';
        config.data.unit = 40;       
    case 59
        cup.id = 5;
        file.postfix = '7day';
        config.data.unit = 40;
    case 60
        cup.id = 8;
        file.postfix = '5day';
        config.data.unit = 40;     
    case 61
        cup.id = 8;
        file.postfix = '6day';
        config.data.unit = 40;
    case 62
        cup.id = 8;
        file.postfix = '7day';
        config.data.unit = 40;
    case 171
        cup.id = 15;
        file.postfix = '1day';
        config.data.unit = 40;
    case 172
        cup.id = 15;
        file.postfix = '2day';
        config.data.unit = 40;
     case 173
        cup.id = 15;
        file.postfix = '3day';
        config.data.unit = 40;
     case 174
        cup.id = 15;
        file.postfix = '5day';
        config.data.unit = 40;                   
     case 175
        cup.id = 15;
        file.postfix = '7day';
        config.data.unit = 40;

    case 86
        cup.id = 11;
        file.postfix = 'plastic';
        config.data.unit = 40;

%     case 176 
%         cup.id = 15;
%         file.postfix = 'user8'; 
%         config.data.unit = 40; 

end

file.name = [num2str(evalId), '_', num2str(cup.id), '_', file.postfix];

config.calib.fL = 500;
config.calib.fH = 2500;
switch cup.id
    case 1 % glass 1 (no handler cup)
        cup.height = 9;
        cup.weight = 254.2;
        cup.maxAmount = 320;
    case 2 % glass 2 (Handler cup)
        cup.height = 9; % centimeter
        cup.weight = 149.5;
        cup.maxAmount = 360;    
    case 3 % glass 3 (Handler cup)
        cup.height = 10.5;
        cup.weight = 180;
        cup.maxAmount = 450;   
    case 4 % glass 4 (wineglass)
        cup.height = 20.5;
        cup.weight = 170;
        cup.maxAmount = 480;         
    case 5 % ceramic 1 (cup)
        cup.height = 9.8; 
        cup.weight = 315.7;
        cup.maxAmount = 390;        
    case 6 % ceramic 2 (teacup)
        cup.hegiht = 7.1;
        cup.weight = 173.8;
        cup.maxAmount = 230;        
    case 7 % ceramic 3 (Bowl)
        if strcmp(file.postfix, 'ceramic_big')
            cup.height = 9.8; 
            cup.weight = 315.7;
            cup.maxAmount = 540;     
        else                   
            cup.height = 9.8; 
            cup.weight = 315.7;
            cup.maxAmount = 320;         
        end
    case 8 % stainless 1 (cup)
        cup.height = 12.1;
        cup.weight = 221.7;
        cup.maxAmount = 440;
        config.calib.fL = 100;
        config.calib.fH = 1000;
    case 9 % stainless 2 (cup)
        cup.height = 7.3;
        cup.weight = 74.2;
        cup.maxAmount = 170;
        config.calib.fL = 100;
        config.calib.fH = 1000;
    case 10 % stainless 3 (tumbler)
        cup.hegiht = 15.6;
        cup.weight = 259;
        cup.maxAmount = 550;
        config.calib.fL = 100;
        config.calib.fH = 1000;
        
%     case 11 % stainless 4 (tumbler)
%         cup.hegiht = 13.5;
%         cup.weight = 98;
%         cup.maxAmount = 540;

    case 11 % plastic 1 (heavy)
        cup.hegiht = 13.5;
        cup.weight = 98;
        cup.maxAmount = 540;
        config.calib.fL = 100;
        config.calib.fH = 1000;

    case 13 % plastic 2 (light)
        cup.hegiht = 11;
        cup.weight = 124.4;
        cup.maxAmount = 480;
        config.calib.fL = 100;
        config.calib.fH = 1000;

    case 14 % stoneware 
        cup.hegiht = 9.8;
        cup.weight = 324;
        cup.maxAmount = 360;

    case 15 % stainless tumbler
        cup.hegiht = 16.7;
        cup.weight = 213.3;
        cup.maxAmount = 410;
        config.calib.fL = 100;
        config.calib.fH = 1000;

    case 16 % stainless mug
        cup.hegiht = 7.7;
        cup.weight = 90;
        cup.maxAmount = 340;
        config.calib.fL = 100;
        config.calib.fH = 1000;

    case 17 % Big Container 1
        cup.hegiht = 25;
        cup.weight = 818.7;
        cup.maxAmount = 2000; 
%         config.calib.fL = 100;
%         config.calib.fH = 1000;

    case 18 % Big Container 2 라면그릇
        cup.hegiht = 6.2;
        cup.weight = 320.7;
        cup.maxAmount = 1300;
%         config.calib.fL = 800;
%         config.calib.fH = 1500;
     
    case 19 % water jug 4L
        cup.hegiht = 32;
        cup.weight = 1000;
        cup.maxAmount = 4000;
        config.calib.fL = 100;
        config.calib.fH = 1000;
     
%     case 20 % plastic 3 (heavy)
%         cup.hegiht = 11;
%         cup.weight = 124.4;
%         cup.maxAmount = 480;
%         config.calib.fL = 100;
%         config.calib.fH = 1000;
    
%     case 21 % glass 1L
%         cup.hegiht = 21;
%         cup.weight = 124.4;
%         cup.maxAmount = 1000;


    case 21 % new glass 1150ml
        cup.hegiht = 17.2;
        cup.weight = 335.5;
        cup.maxAmount = 1150;
%         config.calib.fL = 100;
%         config.calib.fH = 1000;       

end

end


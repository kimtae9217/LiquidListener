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
    case 2
        cup.id = 2;
        file.postfix = 'glass';        
    case 3
        cup.id = 3;
        file.postfix = 'glass';        
    case 4
        cup.id = 4;
        file.postfix = 'glass';        
    case 5
        cup.id = 5;
        file.postfix = 'ceramic';
    case 6
        cup.id = 6;
        file.postfix = 'ceramic';                
    case 7
        cup.id = 7;
        file.postfix = 'ceramic';   
%         config.data.unit = 50;
    case 8
        cup.id = 8;
        file.postfix = 'stainless';
    case 9
        cup.id = 9;
        file.postfix = 'stainless';        
    case 10
        cup.id = 10;
        file.postfix = 'stainless'; 
%%%%%%%%%%%%%%%%%%%[Tool and Device]%%%%%%%%%%%%%%%%%%%        
    case 11
        cup.id = 1;
        file.postfix = 'glass';            
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
%%%%%%%%%%%%%%%%%%%[Liquid]%%%%%%%%%%%%%%%%%%%        
    case 17
        cup.id = 1;
        file.postfix = 'glass';             
    case 18
        cup.id = 1;
        file.postfix = 'coke';
        config.data.unit = 40;  
        config.data.density = 1.03;        
    case 19
        cup.id = 1;
        file.postfix = 'milk';
        config.data.unit = 40;      
        config.data.density = 1.03;        
    case 20
        cup.id = 1;
        file.postfix = 'vodka';
        config.data.unit = 40;        
        config.data.density = 0.94;
    case 21
        cup.id = 1;
        file.postfix = 'water_hot';
        config.data.unit = 40;        
    case 22
        cup.id = 1;
        file.postfix = 'water_cold';
        config.data.unit = 40;    
%%%%%%%%%%%%%%%%%%%[Location]%%%%%%%%%%%%%%%%%%%        
    case 23
        cup.id = 1;
        file.postfix = 'glass';                   
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
%%%%%%%%%%%%%%%%%%%[Distance]%%%%%%%%%%%%%%%%%%%        
    case 27
        cup.id = 1;
        file.postfix = '5cm';
        config.data.unit = 40;
    case 28
        cup.id = 1;
        file.postfix = '10cm';                           
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
%%%%%%%%%%%%%%%%%%%[Noise]%%%%%%%%%%%%%%%%%%%        
    case 33
        cup.id = 1;
        file.postfix = 'glass';                   
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
%%%%%%%%%%%%%%%%%%%[Placement]%%%%%%%%%%%%%%%%%%%        
    case 43
        cup.id = 3;
        file.postfix = 'glass';                   
        config.data.unit = 40;     
    case 44
        cup.id = 3;
        file.postfix = 'body';
        config.data.unit = 40;     
    case 45
        cup.id = 3;
        file.postfix = 'handle';
        config.data.unit = 40;       
    case 46
        cup.id = 4;
        file.postfix = 'support';
        config.data.unit = 40;
    case 47
        cup.id = 3;
        file.postfix = 'coaster1';
        config.data.unit = 40;     
    case 48
        cup.id = 3;
        file.postfix = 'coaster2';
        config.data.unit = 40;       
    case 49
        cup.id = 3;
        file.postfix = 'coaster3';
        config.data.unit = 40;       
    case 50
        cup.id = 6;
        file.postfix = 'saucer';
        config.data.unit = 20;                        
%%%%%%%%%%%%%%%%%%%[Time]%%%%%%%%%%%%%%%%%%%        
    case 51
        cup.id = 1;
        file.postfix = 'glass';                   
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
        file.postfix = '5day';
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
    case 7 % ceramic 3 (Bowl) % 아직 준비 안함 (예비로 넣음)
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
end

end


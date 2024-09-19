function [file, cup, config] = func_loadBasicParams(cupId)

file.path = ['../dataset/20220705_data/', num2str(cupId), 'cup_glass_T/'];
% file.path = ['../dataset/20220705_data/', num2str(cupId), 'cup_pen/'];
% file.path = ['../dataset/20220705_data/', num2str(cupId), 'cup_phone/'];
% file.path = ['../dataset/20220705_data/', num2str(cupId), 'cup_nail/'];

file.name = 'T-glass%dcup%d-%d.wav';
% file.name = 'pen-%dcup%d-%d.wav'; 
% file.name = 'phone-%dcup%d-%d.wav'; 
% file.name = 'nail-%dcup%d-%d.wav'; 

switch cupId
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
        cup.height = 9.8; 
        cup.weight = 315.7;
        cup.maxAmount = 700;

    case 8 % stainless 1 (cup)
        cup.height = 12.1;
        cup.weight = 221.7;
        cup.maxAmount = 440;

    case 9 % stainless 2 (cup)
        cup.height = 7.3;
        cup.weight = 74.2;
        cup.maxAmount = 170;
    
    case 10 % stainless 3 (tumbler)
        cup.hegiht = 15.6;
        cup.weight = 259;
        cup.maxAmount = 550;



end

end


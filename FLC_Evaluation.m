h = readfis('Green_House_FLC_IN&OUTS.fis');

%Inputs
light_input = input('What is the lighting from 0 to 2000: ');
temperature_input = input('What is the internal temperature from -10 to 60: ');
humidity_input = input('What is the humidity from 0 to 100: ');
moisture_input = input('What is the soil moisture from 0 to 100: ');
ph_input = input('What is the ph from 0 to 14: ');
cloud_input = input('What is the cloudiness from 0 to 100: ');

l = evalfis(h,[light_input temperature_input humidity_input moisture_input ph_input cloud_input]);

%Outputs
fans_output = l(1);
heaters_output = l(2);
lamps_output = l(3);
sprinklers_output = l(4);

%Fans
if fans_output < 25
disp('Turn fans on Very Low')
elseif (25<fans_output)&&(fans_output<45)
disp('Turn fans on Low')
elseif (45<fans_output)&&(fans_output<65)
disp('Turn fans on Medium')
elseif (65<fans_output)&&(fans_output<85)
disp('Turn fans on High')
else
disp('Turn fans on Very High')
end

%Heaters
if heaters_output < 25
disp('Turn heater on Very Low')
elseif (25<heaters_output)&&(heaters_output<45)
disp('Turn heater on Low')
elseif (45<heaters_output)&&(heaters_output<65)
disp('Turn heater on Medium')
elseif (65<heaters_output)&&(heaters_output<85)
disp('Turn heater on High')
else
disp('Turn heater on Very High')
end

%Lamps
if lamps_output < 25
disp('Turn lamps on Very Low')
elseif (25<lamps_output)&&(lamps_output<45)
disp('Turn lamps on Low')
elseif (45<lamps_output)&&(lamps_output<65)
disp('Turn lamps on Medium')
elseif (65<lamps_output)&&(lamps_output<85)
disp('Turn lamps on High')
else
disp('Turn lamps on Very High')
end

%Sprinklers
if sprinklers_output < 25
disp('Turn sprinklers on Very Low')
elseif (25<sprinklers_output)&&(sprinklers_output<45)
disp('Turn sprinklers on Low')
elseif (45<sprinklers_output)&&(sprinklers_output<65)
disp('Turn sprinklers on Medium')
elseif (65<sprinklers_output)&&(sprinklers_output<85)
disp('Turn sprinklers on High')
else
disp('Turn sprinklers on Very High')
end
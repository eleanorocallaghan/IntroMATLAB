n = 1;
V = 22.41; % in liters
T = 273.2; % in Kelvin
a = 6.49; % for chlorine
b = 0.0562; % for chlorine
R = 0.08206; % gas constant for these units

pressureIdealGasLaw = (n*R*T)/V;
pressureVanDerWaals = ((n*R*T)/(V-n*b))-(a*(n^2)/(V^2));

pDifference = pressureVanDerWaals - pressureIdealGasLaw;

fprintf ('Ideal gas pressure is %f atm\n', pressureIdealGasLaw)
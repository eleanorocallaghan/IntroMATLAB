%{
Given a user input of a temperature in degrees Fahrenheit, this program
will output the difference betweeen that temperature and freezing (32
degrees) and the difference between that temperature and boiling (212
degrees). 
%}

temp = input('Enter temperature in degrees Fahrenheit: ');

freezingDiff = temp - 32; %Calculate how many degrees above freezing temp is
boilingDiff = 212 - temp; %Calculate how many degrees below boiling temp is

fprintf('Temp is %d degrees above freezing.\n', freezingDiff)
fprintf('Temp is %d degrees below boiling.\n', boilingDiff)
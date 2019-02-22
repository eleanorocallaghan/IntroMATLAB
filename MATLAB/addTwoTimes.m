firstHours = input ('Please enter hours of first time: ');
firstMinutes = input ('Please enter minutes of first time: ');
secondHours = input ('Please enter hours of second time: ');
secondMinutes = input ('Please enter minutes of second time: ');

firstTotalMinutes = firstHours*60 + firstMinutes;
secondTotalMinutes = secondHours*60 + secondMinutes;
totalMinutes = firstTotalMinutes+ secondTotalMinutes;
leftoverMinutes = mod(totalMinutes, 60);
completeHourMinutes = totalMinutes - leftoverMinutes;
finalHours = mod((completeHourMinutes/60), 24);

fprintf('%d:%d\n', finalHours, leftoverMinutes);
firstHours = input ('Please enter hours of first time: ');
firstMinutes = input ('Please enter minutes of first time: ');
firstSeconds = input ('Please enter seconds of first time: ');
secondHours = input ('Please enter hours of second time: ');
secondMinutes = input ('Please enter minutes of second time: ');
secondSeconds = input ('Please enter seconds of second time: ');

firstTotalSeconds = firstHours*60*60 + firstMinutes*60 + firstSeconds;
secondTotalSeconds = secondHours*60*60 + secondMinutes*60 + secondSeconds;
totalSeconds = firstTotalSeconds+ secondTotalSeconds;
leftoverSeconds = mod(totalSeconds, 60);
totalMinutes = (totalSeconds - leftoverSeconds)/60;
leftoverMinutes = mod(totalMinutes, 60);
completeHourMinutes = totalMinutes - leftoverMinutes;
finalHours = mod((completeHourMinutes/60), 24);

fprintf('%d:%d.%d\n', finalHours, leftoverMinutes, leftoverSeconds);
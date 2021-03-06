%{
Given accelerometer data, this program will display the x and y accleration
as a fuction of time, the path taken, and the path scaled and overlayed 
on a Satellite image of the area surrounding Mason Hall.
%}

% bring the accelerometer data into MATLAB
% column 1: time, column 2: a-accel, column 3: y-accel
data = xlsread('AccelerometerData.xlsx');

% move column data into separate variables
t = data(:,1); % time
ax = data(:,2); % x-acceleration
ay = data(:,3); % y-acceleration

% plot CS's x-acceleration as a function of time
clf(figure (1))
figure(1); plot(t,ax)
title('CS''s X-Acceleration as a Function of Time')
xlabel('time (seconds)')
ylabel('x-acceleration (m/s^2)')

% plot CS's y-acceleration as a function of time
clf(figure (2))
figure(2); plot(t,ay)
title('CS''s Y-Acceleration as a Function of Time')
xlabel('time (seconds)')
ylabel('y-acceleration (m/s^2)')

deltaT = t(2)-t(1); % calculate the difference in time between measurements

vx = cumsum(ax).*deltaT; % multiply cumulative sum of x-acceleration by 
% delta T to get x-velocity
vy = cumsum(ay).*deltaT; % multiply cumulative sum of y-acceleration by 
% delta T to get y-velocity

dx = cumsum(vx).*deltaT; % multiply cumulative sum of x-velocity by 
% delta T to get x-displacement
dy = cumsum(vy).*deltaT; % multiply cumulative sum of y-velocity by 
% delta T to get y-displacement

% plot CS's x and y displacements to see her path
clf(figure (3))
figure(3); plot(dx, dy)
title('CS''s Displacement')
xlabel('x-displacement (meters)')
ylabel('y-displacement (meters)')

% place satellite image of campus in figure 4
pixelData = imread('masonSatellitePicture.png');
clf(figure (4))
figure(4); image(pixelData)
hold on
% add a white line to calculate the scale of the image
scaleOriginX= 142; % x-location to start white scale line
scaleOriginY= 120;  % y-location to start white scale line
scaleLengthPixels= 263; % length of scale line in pixels
plot([scaleOriginX scaleOriginX+scaleLengthPixels], ...
    [scaleOriginY scaleOriginY],'Color','white','LineWidth',2); 

initialPositionX= 340; % x-location to start CS outside Mason Hall on image
initialPositionY= 260; % y-location to start CS outside Mason Hall on image
px = dx.*(scaleLengthPixels/100)+initialPositionX; % x-position, accounting
% for scale (# pixels/# meters) and intial x-position
py = initialPositionY-dy.*(scaleLengthPixels/100); % y-position, accounting
% for scale (# pixels/# meters) and intial y-position

% plot CS's scaled and shifted path over satellite image
figure(4); plot(px,py,'Color','red','LineWidth',1)
title('CS''s Position')
xlabel('x-position (meters)')
ylabel('y-position (meters)')

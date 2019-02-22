% Mod3Day1Act1.m
b= 18;
h= 1;
p= PerimeterRectangle(b,h);
a= AreaRectangle(b,h);
fprintf('Area/perimeter ratio= %f units,\n', a/p);
fprintf('for a %f by %f unit rectangle.\n', b,h);

b= 9;
h= 2;
p= PerimeterRectangle(b,h);
a= AreaRectangle(b,h);
fprintf('Area/perimeter ratio= %f units,\n', a/p);
fprintf('for a %f by %f unit rectangle.\n', b,h);

b= 6;
h= 3;
p= PerimeterRectangle(b,h);
a= AreaRectangle(b,h);
fprintf('Area/perimeter ratio= %f units,\n', a/p);
fprintf('for a %f by %f unit rectangle.\n', b,h);

function perimeter= PerimeterRectangle(base,height)
% PerimeterRectangle calculates the perimeter of a rectangle.
% arguments:
% base base of rectangle
% height height of rectangle
% return:
% perimeter perimeter of rectangle
perimeter = 2.*base + 2.*height;
end

function area= AreaRectangle(base,height)
% AreaRectangle calculates the perimeter of a rectangle.
% arguments:
% base base of rectangle
% height height of rectangle
% return:
% area of rectangle
area = base.*height;
end
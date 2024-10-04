% Joel Villarreal
% Script for Bisection Method
% Keep bisecting an interval that contains the root, using the bisection 
% as the new upper or lower bound (based on wether it is positive or 
% negative), stop when failed, or when succeeded (root gotten to within
% some tolerance)

clc
clear
format long

n_max = 25; % The maximum number of itterations befor failure

tolerance = 0.0001; % Approximating x to within 10^(-4) 

upper = 1.5; % initial upper estimate of the root
lower = 1.25; % initial lower estimate of the root

for n=1: n_max 

    midpoint = (upper + lower) / 2;
    fmid = function2(midpoint);

    if (abs(fmid) < tolerance) 
        display("abs(fmid): " + abs(fmid) + " < tolerance: " + tolerance);
        break;
    end

    if (fmid > 0)
        lower = midpoint;
    elseif (fmid < 0) 
        upper = midpoint;
    end 

    % disp("f(midpoint) = " + fmid);
    % disp("root in interval: (" + lower + ", " + upper + ")");

end

if (n < n_max) % successful
    display("approximate root of x: " + midpoint);
else
    disp("The method failed after 25 attempts, procedure unsuccessful");
    disp("closest approximate of root x: " + midpoint);
end

%% Graphical Representation of y = 2x * (1 + x^2)^(-1) - arctan(x)

x = 1:.01:2;
y = x;

for i = 1:numel(x) % setting the y values
    y(i) = function2(x(i));
end

plot(x, y, "-x");

grid on
hold on

plot(midpoint, fmid, "o");
legend("2x * (1 + x^2)^-^1 - arctan(x)", "(" ...
    + midpoint + ", " + function2(midpoint) + ")");
title("Estimating Root of 2x * (1 + x^2)^-^1 - arctan(x)");

hold off
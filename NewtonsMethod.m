% Joel Villarreal
% Script for Newton's Method
% x_(n+1) = x_(n) - f(x_n) / f'(x_n)

clc
clear
format long


n_max = 25; % The maximum number of itterations befor failure

% Choose a tolerance by uncommenting one of the two following lines:

%tolerance = 0.00000001; % Approximating x to within 10^(-8), for PROBLEM
% 1
tolerance = 0.0001; % Approximating x to within 10^(-4), for PROBLEM 3


% Choose an initial guess by uncommenting one of the two following lines:

%x_n = 1.75; % Initial guess of 1.75, for PROBLEM 1
x_n = 1; % Initial guess of 1, for PROBLEM 3



for n=1: n_max 

    % Choose the function for the problem you are trying to solve (should
    % also update initial condition, and tolerance if need be)

    %[f, fPrime] = function1(x_n); % PROBLEM 1
    [f, fPrime] = function3(x_n); % PROBLEM 3

    x_next = x_n - f / fPrime;

    if (abs(f) < tolerance)
        display("f: " + f + " < tolerance: " + tolerance);
        break
    end

    % disp("x_n: " + x_n + ", f(x_n): " + f); % For error handling

    x_n = x_next;
end

if (n < n_max) % successful
    display("approximate root of x: " + x_n);
else
    disp("The method failed after 25 attempts, procedure unsuccessful");
end

%

%% Graphical Representation of x^3 = x^2 + x + 1, PROBLEM 1

x = 1.5:.01:2;
p =[-1 1 1 1]; % polynomial function

plot(x,polyval(p,x), "-x");

grid on
hold on

plot(x_n, f, "o");
legend("-x^3 + x^2 + x + 1", "(" + x_n + ", " + f + ")");
title("Finding Root of -x^3 + x^2 + x + 1");

hold off

%% Graphical Representation of System of Problem 3

x = 0.75:.15:3;
y = x;
unneccessary = x;

for i = 1:numel(x) % setting the y values
    [y(i), unneccessary] = function3(x(i));
end

plot(x, y, "-x");

grid on
hold on

plot(x_n, f, "o");
legend("f(x) = x^3 - 2xy + y^7 - 4x^3y -5, y = (4 - tan(x)) / (sin(x) + 3x^2)", ...
    "(" + x_n + ", " + f + ")");
title("Estimating root with x0 = 1");

hold off

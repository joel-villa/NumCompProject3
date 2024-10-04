% Joel Villarreal
% A function, and its first derivative
% For problem 3

function [y, yprime] = function4(x)

y = (4 - tan(x)) / (sin(x) + 3 * x^2);
yprime = (-1*sec(x)^2*(sin(x) + 3*x^2) -(cos(x)+6*x)*(4 - tan(x))) / (sin(x) + 3*x^2)^2;

end
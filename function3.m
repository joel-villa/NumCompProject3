% Joel Villarreal
% The function to find the root of, and its first derivative
% For problem 3

function [y, yprime] = function3(x) 

[g, gPrime] = function4(x);

y = x^3 - 2*x*g + g^7 - 4*x^3*g - 5;
yprime = 3*x^2 -2*g -2*x*gPrime +7*g^6*gPrime - 12*x^2*g - 4*x^3*gPrime;

end
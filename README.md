# Numerical Computations, Project 3

## Problem 1

### The Problem: Estimate to within 10^-8, the solution of x^3 = x^2 + x + 1

- Todo this, note that the problem can be written as:
f(x) = - x^3 + x^2 + x + 1
- Where f(x) = 0, solves the problem, a root finding problem.
- Can be solved with Newton's Method.
f'(x) = -3x^2 + 2x + 1
- Newton's Method is in NewtonsMethod.m
- This function and it's derivative are in function1.m

### Findings

- The problem, x^3 = x^2 + x + 1, has a solution of x = 1.8393

## Problem 2

## NewtonsMethod.m

### Use for Solving PRoblem 1:

- Uncomment the desired tolerance: 10^-8
- Uncomment the desired initial value: xn = 1.75
- Uncomment the associated function.m file: function1.m
- Run the first section, an approximate root of 1.8393 should display in the 
  console.
  - NOTE: there is a RUN SECTION button near the usual RUN button at the top
- Run the second section to get a graph of this solution
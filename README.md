# Numerical Computations, Project 3

## Problem 1

### The Problem: Estimate to within 10^-8, the solution of x^3 = x^2 + x + 1

- To do this, note that the problem can be written as:
f(x) = - x^3 + x^2 + x + 1
- Where f(x) = 0, solves the problem, a root finding problem.
- Can be solved with Newton's Method.
f'(x) = -3x^2 + 2x + 1
- Newton's Method is in NewtonsMethod.m
- This function and it's derivative are in function1.m

### Findings

- The problem, x^3 = x^2 + x + 1, has an approximate solution of 
x = 1.8393

## Problem 2

### The Problem: Estimate the positive solution of 2x(1 + x^2)^(-1) = arctan(x)

- To do this, not that the problem can be written as: 
f(x) = 2x(1+x^2)^(-1) - arctan(x)
- Bistion Method can be used to solce this problem
  - Bisection Method is in BisectionMethod.m  
  - This function of x is in function2.m

### Findings: 

- the positive solution of 2x(1 + x^2)^(-1) = arctan(x) is approximately
x = 1.3916

## Problem 3

### The Problem: x^3 - 2xy + y^7 - 4x^3y = 5, where y = (4 - tan(x)) / (sin(x) + 3x^2)

f(x) = x^3 - 2xy + y^7 - 4x^3y - 5
  y(x) = (4 - tan(x)) / (sin(x) + 3x^2)
f'(x) = 3x^2 - 2y - 2xy' + 7y^6y' - 12x^2y - 4x^3y;
  y'(x) = (-sec(x)(sin(x) + 3x^2) - (cos(x) + 6x)(4 - tan(x))) / (sin(x) + 3x^2)^2

- With all of these worked out, we can use Newton's Method to solve the system
- Newton's Method in Newton's Method.m
- f and f' are in function3.m
- y and y' are in function4.m

### Findings

- The Problem: x^3 - 2xy + y^7 - 4x^3y = 5, where y = (4 - tan(x)) /
  (sin(x) + 3x^2), is solved by approximately
x = 2.8047

## NewtonsMethod.m

### Use for Solving Problem 1:

- Uncomment the desired tolerance: 10^-8
- Uncomment the desired initial value: xn = 1.75
- Uncomment the associated function.m file: function1.m
- Run the first section, an approximate root of 1.8393 should display in the 
  console.
  - NOTE: there is a RUN SECTION button near the usual RUN button at the top
- Run the second section to get a graph of this solution

### Use for Solving Problem 3: 

- Uncomment the desired tolerance: 10^-4
- Uncomment the desired initial value: 1
- Uncomment the associated function.m file: function3.m
- Run the first section, an approximate root of 2.8047 should display in the 
  console.
  - NOTE: there is a RUN SECTION button near the usual RUN button at the top
- Run the third section to get a graph of this solution

## BisectionMethod.m

### Use for Solving Problem 2: 

- Run the code, should get that the approximate solution to the problem is 
1.3916
- The graph verifies that this solution zeroes out the function associated with
  the problem

## function.m Files

### function1.

- Contains f and f' for soving problem 1.

### function2.m

- contains f for solving problem 2.

### funciton3.m

- contains f and f' for solving problem 3 (is reliant on function4.m)

### function4.m

- contains y and y' for solving problem 3 (used by function3.m alone)
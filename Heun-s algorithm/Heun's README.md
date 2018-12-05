# Heun's Method 
The Heun's Method is a numerical method use to calculate a solution for a differential equation. It has a predictor and corrector equation.
the predictor equation is the same as euler's method, but because that guess is not accurate enough we use the corrector formula to make it more accurate.
## How it works
The user provides the initial condition such like step size(h), the lower and upper bound ([t0,t]), the y initial and the initial derivative value, the algorithm calculates an initial y value at the end of the integral, then uses the corrector equation a couple times to increase the accuracy of the solution for the first t value and then moves on onto the next t value by a stepsize of h.
### Equations 
Predictor- y(i+1)=y(i)+dydt(t(i),y(i))*h

Corrector-y(i+1)=y(i)+(dydt(t(i),y(i))+ dydt(t(i+1),y(i+1)))/2*h
### Inputs
dydt - Differential Equation.

tspan - The range of values of t.

y0 - The initial value of y or initial condition to start.

h = Step Size.

es - Estimated error.
maxit - Maximum number of iterations.
### Outputs 
t - t-variable.

y - y-variable.
### Limitations 
-at least four inputs and at the most six inputs

-tspan need to have a lenght of two.

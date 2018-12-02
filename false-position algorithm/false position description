# False Position 
The false position method is numerical method use to find the roots of functions. It can be used to determine roots or optimization points. It is consider a closed root finding method. This type of method can take time computationally but are very liable by the moment to determine roots.
## How does it work 
The False Position method consist in taking two points of a function, and tracing a line between both of them. The approximate root would be where the line intersect with the x-axis. The user start by guessing two points. These two points are assigned to be the lower and upper bound. After the method has been applied the approximate root will be tested with the function.
The outcome of the approximate root is multiply by the outcomes of the lower and upper bound. Wherever the multiplication has a negative result, the approximated root would become the new lower or upper bound and the process will repeat.
### Equation 
Xr= Xu-((f(Xu)*(Xl-Xu))/(f(Xl)-f(Xu)))
### Inputs 
- func- the function being evaluated
- Xl- lower bound 
- Xu- upper bound
-es- relative error or stopping criteria (es=0.0001%)
- maxiter- desired number of iteration (default=200)
### Output 
- root - the estimated root location 
-f(x)-the function evaluated at the root
-ea- approcimate relative error
-iter-how many iterations were done.
### Limitations 
The function will not work if less than three or more than five inputs are inputed. Moreover, the function will throw an error if the multiplication of the outputs of the lower and upper bound are not negative.
Which means that the segment drawn from one bound to the other does not cross the x axis.

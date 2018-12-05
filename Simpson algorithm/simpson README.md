 # Simpson
This code is base on the simpson method. The simpson method is a numerical integration method that is very useful when one is encounter with 2nd and higher order functions. There are two variations for the Simpson rule. The first is the Simpson 1/3 rule which is used when  there are an even number of segments, and the Simpson 3/8 rule is used when there is an odd number of segments. However, in this algorithm the Simpson 1/3 rule is used, and if there is an odd number of segments, the trapezoidal rule is used in that extra segment.
 ## How does it work 
The simpson 1/3 rule creates an even number of segments under the polynomial function, the sum of the area of those segments is taken as the estimate for the integral.
 ### Inputs
x- independent experimental data

y- dependent experimental data
 ### Outputs
I-integral value 
### Limitations 
This algorithm needs to experimental data of the same length with more than three data values. Moreover, the independent experimental data must be equally spaced in order to the Simpson rule to work.

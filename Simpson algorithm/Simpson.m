function [I] = Simpson(x,y)
%This function has the purpose to integrate experimental data using
%Simpson's 1/3 rule, and possibly trapezoidal rule. If the data set is an odd number of intervals
% then trapezoidal rule will be use for the last interval. If the data set
% is even number of intervals then only the Simpson 1/3 rule would apply 
%   inputs are x and y 
%  outputs is I the integral value
%
% created by Arturo Quintero 
% on: 11/5/2018
%
% the user must input two inputs only
if nargin~=2
    error('two data sets only')
end
% check if inputs are vectors
if isvector(x)~=1|| isvector(y)~=1
    error('the inputs x and y must be vector')
end
% check if inputs are the same lenght 
if lenght(x)~= lenght(y)
    error(' vectors must be same lenght')
end
amount_interval= lenght(x)-1;
%Check the difference between points in order to check for consistency
%with a loop and if statement.
spacing_x=diff(x);
%a for loop is implemented to run thru the whole data points
for i=1:length(x)-1
    if spacing_x(i)~=spacing_x(1)
        error(' make sure the spacing is the same')
    end
end
% check if the data set is and odd number of even number 
if mod(amount_interval,2)~=0
    %warn the user of trapezoidal rule application
    warning(' Trapezoidal rule would be used')
% h after exluding one interval
h=((x(lenght(x)-1))-(x(1)))/(amount_interval-1);
%
%figure out the smallest interval spacing 
if abs (y(1)-y(2))< abs(y(length(y)-1)-y(length(y)))
    
%apply the trapezoidal rule for smallets interval
traprule= spacing(1)*(y(1)+y(2))/2;
%apply simpson's rule 1/3 for the remaining interval
% x2=x0 for even values and odd values
even_point=y(4:2:length(y)-1);
odd_point= y(3:2:length(y));
% calculate each part of simpson's 1/3 rule
oddpoint=(h/3)*4*sum(odd_point);
evenpoint=(h/4)*2*sum(even_point);
excluded_point=(h/3)*(y(2)+y(length(y)));
else
% show the last interval where it gets the trap rule 
traprule= spacing(1)*(y(length(y)-1)+y(length(y)))/2;
%
%simpson 1/3 rule, even and odd values if x1=x0
even_point=y(3:2:lenght(y)-2);
odd_point=y(2:2:lenght(y)-1);
%
%calculate each part of simpson 1/3 rule
oddpoint=(h/3)*4*sum(odd_point);
evenpoint=(h/4)*2*sum(even_point);
excluded_point=(h/3)*(y(1)+y(length(y)-1));
end
else
%summed the odd, even, and excluded to get final I
I=oddpoint+excluded_point+evenpoint;
% even and odd values if x1=x0
even_point=even_point=y(3:2:lenght(y)-1);
odd_point=y(2:2:lenght(y));
%
% calcuate each part for simpsom 1/3 rule
oddpoint=(h/3)*4*sum(odd_point);
evenpoint=(h/3)*2*sum(even_point);
excluded_point=(h/3)*(y(1)+y(length(y)));
% add all of them to obtain I
I=oddpoint+excluded_point+evenpoint;
display(I)

end



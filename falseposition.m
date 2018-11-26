function [root,fx,ea,iter] = falseposition(func,xl,xu,es,maxit)
%UNTITLED3 Summary of this function goes here
%INPUTS:
% func- the function evaluated
%xl- lower bound 
%xu- upper bound 
%es- desired relative error 
%maxit- maximum allowed iteration
%
%OUTPUTS:
%root-real root
% f(x)- function evaluate at root
% ea- approximate relative error
% iter- number of iteration performed
%
%NOTE: In order to the algorithm to perform as desire, 
%       the user has to input an anonymous function. 
if nargin<3, error('at least three inputs required');
elseif nargin< 4
    es=0.0001;
    maxit=200;
    
else nargin<5
    maxit=200;
end
if func(xu)*func(xl)>0, error('they are not roots in the interval'); end
% initial values for number of iteration,lower bound (xl), approximate
% values of root xr, and percent relative error (ea).
iter=0;
xr=xl;
ea=100;
while(1)
    xrold=xr;
    xr=xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    iter=iter+1;
    if xr~=0
        ea=abs((xr-xrold)/xr)*100;
    end
    %determine if xr would become the upper bound or lower bound for the
    %next iteration
    if func(xl)*func(xr)<0
        xu=xr;
    elseif func(xl)*func(xr)>0
        xl=xr;
    else
        ea=0;
    end
    %condition to break the while loop
    if ea<=es || iter>=maxit,break,end
    
end
disp('the false position approximation of your roots is/are:')
root= xr; fx=func(xr);

function [t,y] = Heun(dydt,tspan,yo,h,es,maxit)
%this
%   Checking for input errors and stabilishing a default in such case that
%   the user does not input all six inputs.
if nargin==4
    
    es=0.001;
    maxit=50;
    
elseif nargin==5
    maxit=50;
    
else
end
    
if length(tspan)~=2 % indicating that the two values to plug would be the beginning point and the end point of the interval
    
    error('only two inputs allowed')

else
    
    t=tspan(1):h:tspan(2); % creating a number of values for t, using the step size
    y=yo;% initial y given by the user 
    
    for i=1:length(t)-1 %for loop use to run the predictor and corrector 
        
        y(i+1)=y(i)+dydt(t(i),y(i))*h; %predictor equation
        ea=1000000; %initial error 
        iter=1;     % initial condition for the set up of corrector equation
        
        while iter <= maxit && ea>=es % while loop use to provide the best approximation of the point with corrector formula.
            
            yold=y(i+1); % y after predictor and before corrector equation
            y(i+1)=y(i)+(dydt(t(i),y(i))+ dydt(t(i+1),y(i+1)))/2*h;% corrector equation
            ynew=y(i+1);% y after corrector equation
            ea=abs(dydt(t(i+1),ynew)-dydt(t(i+1),yold))/(dydt(t(i+1),ynew))*100; % approximate relative error
            iter=iter+1;
        end
    end
    % plotting the function 
    figure
    plot(t,y)
    title('Heun''s Method')
    xlabel('t values')
    ylabel('y values')
    grid on 
end
end

function [out]= nxmfunction(n,m)
% this function calculates a matrix that has its first rows values
% express as the number of the columns, and its first columns values
% express as the number of the rows. Moreover, all the other elements in
% the matrix are express as the sum of the element above it plus the
% element to the left of it.
n=input('number of rows:'); % user needs to enter the number of rows
m=input('number of columns:'); % user needs  to enter the number of columns
if n<=0 || m<=0
    disp('Error') % the user must provide two inputs, so the function can run.
end
    A=zeros(n,m);
    for k=1:n
        A(k,1)= k;  % establish the value for the first column 
    end
    for p=1:m
        A(1,p)= p; % establish the value for the first row
    end
    for k=2:n
        for p=2:m                     % establish the value for the other elements in the matrix
            A(k,p)=A(k-1,p)+A(k,p-1); 
        end
    end
    disp(A)
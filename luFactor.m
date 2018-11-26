function [] = luFactor(A)
% this function has the purpose to get the matrix [L],[U],and [P] from the
% matrix coefficient A. By inputing an square matrix nxm matrix [A].
%
% Define conditions 
if nargin~=1 error('enter only A which is a nxm matrix'),end 
%check if there is a square matrix
[row,col]=size(A);
if row ~= col error('the number of rows need to be the same as the number of columns')
end
%define matrices L and P.
P=eye(row);
L=eye(row);
% start pivoting process if needed by creating a loop which selects which
% column to work with 
for i=1:col-1
    %determining the where the biggest coefficient is.
[M,I]=max(abs(A(i:row,i)));
%selecting the row of with the biggest coefficient 
rowbigcoef=A(I+i-1,:);
% select temporarily the top row that has to switch places with the biggest coeff row.
rowtemp= A(i,:);
%Switch the rows 
A(I+i-1,:)=rowtemp;
A(i,:)=rowbigcoef;

%Apply same process with permutation matrix [P].
rowPbigcoef= P(I+i-1,:);
rowPtemp=P(i,:);
 %switch rows
 P(I+i-1,:)=rowPtemp;
 P(i,:)=rowPbigcoef;
 
 %after the first column is done and the two zeros were found do the same
 %with L
 if i>1
 rowLbigcoef= L(I+i-1,i-1);
rowLtemp=L(i,i-1);
 %switch rows
 L(I+i-1,i-1)=rowLtemp;
 L(i,i-1)=rowLbigcoef;
 end 
 % after pivoting lets put the factors that are modifying A in L and the
 % results in A.
 
 for j=1:(row-i)
     % update the L
     L(i+j,i)=A(i+j,i)/rowbigcoef(i);
     %do operation with the factors to obtain new values of A 
     A(i+j,:)=A(i+j,:)-(L(i+j,i)*rowbigcoef);
 end
end
 % name U the final A and display it along with L and P
 
U=A;
display(U)
display(P)
display(L)
 

end



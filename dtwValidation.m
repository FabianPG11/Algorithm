function [distance] = dtwValidation(signalA,signalB)
%DTWVALIDATION Summary of this function goes here
%   Detailed explanation goes here
dtwMatrix=zeros(size(signalB,1),size(signalA,1));
dtwMatrix(1,1)=abs(signalA(1)-signalB(1));

%Upper border or first row
for i=2:size(signalA,1)
    dtwMatrix(1,i)= abs(signalA(i)-signalB(1)) + dtwMatrix(1,i-1);
end

%Left border or first column
for i=2:size(signalB,1)
    dtwMatrix(i,1)= abs(signalA(1)-signalB(i)) + dtwMatrix(i-1,1);
end

%DTW Matrix
for i=2:size(signalB,1)
    for j=2:size(signalA,1)
        dtwMatrix(i,j) = abs(signalA(j)-signalB(i)) + min([dtwMatrix(i-1:i,j-1)' dtwMatrix(i-1,j)]);
    end
end

distance=dtwMatrix(size(signalB,1),size(signalA,1));
end


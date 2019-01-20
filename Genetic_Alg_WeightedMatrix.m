function [] = Genetic_Alg_WeightedMatrix()
%GENETIC_ALG_WEIGHTEDMATRIX Summary of this function goes here
%   Detailed explanation goes here
Weight1=rand(3600,3600);
Weight2=rand(10,3600)/1000000;

W1=Weight1;
W2=Weight2;
%
for cyc=1:1000000
out=Weight2*(Weight1*InputNet);
error=sum(sum((out.*out)-(OutputNet.*OutputNet)))
for i=1:10
    signal=randi(8);
    X=randi(3600);
    Y=randi(3600);
    if signal==1        
        W1(X,Y)=W1(X,Y)+0.0001;
    elseif signal==2        
        W1(X,Y)=W1(X,Y)-0.0001;
    elseif signal==3
        W1(X,Y)=W1(X,Y)*rand(1);
    elseif signal==4
        W1(X,Y)=W1(X,Y)/rand(1);
    elseif signal==5
        W2(randi(10))+0.001;
    elseif signal==6
        W2(randi(10))-0.001;
    elseif signal==7
        W2(randi(10))*rand(1);
    elseif signal==8
        W2(randi(10))/rand(1);
    end
end
out=W2*(W1*InputNet);
sum(sum((out.*out)-(OutputNet.*OutputNet)))
better=0;
better= error>sum(sum((out.*out)-(OutputNet.*OutputNet)))
if better==0 
    W1=Weight1;
    W2=Weight2;
else
    improvement=improvement+1;
    Weight1=W1;
    Weight2=W2;
end
end

WeightMatrix2*(WeightMatrix1*PC0_r)
end


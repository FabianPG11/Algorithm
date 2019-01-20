function [outputArg1,outputArg2] = dtwNumber(signalA,N0_3_r,N1_3_r,N2_3_r,N3_3_r,N4_3_r,N5_3_r,N6_3_r,N7_3_r,N8_3_r,N9_3_r,method)
%DTWNUMBER Calculates the distance between the number and pre-made numbers
%to identify ist value. 
%   Detailed explanation goes here

% i.e. dtwNumber(PC0_r,N0_3_r,N1_3_r,N2_3_r,N3_3_r,N4_3_r,N5_3_r,N6_3_r,N7_3_r,N8_3_r,N9_3_r,1)
% i.e. dtwNumber(N1_0_r,N0_3_r,N1_3_r,N2_3_r,N3_3_r,N4_3_r,N5_3_r,N6_3_r,N7_3_r,N8_3_r,N9_3_r,1)
% i.e. dtwNumber(NI_test_r,N0_3_r,N1_3_r,N2_3_r,N3_3_r,N4_3_r,N5_3_r,N6_3_r,N7_3_r,N8_3_r,N9_3_r,1)

Y=zeros(10,1);
%signalA2D=NI_test;
%signalA=NI_test_r;

if method==0
    Y(1,1)=dtwValidation(signalA,N0_3_r);
    Y(2,1)=dtwValidation(signalA,N1_3_r);
    Y(3,1)=dtwValidation(signalA,N2_3_r);
    Y(4,1)=dtwValidation(signalA,N3_3_r);
    Y(5,1)=dtwValidation(signalA,N4_3_r);
    Y(6,1)=dtwValidation(signalA,N5_3_r);
    Y(7,1)=dtwValidation(signalA,N6_3_r);
    Y(8,1)=dtwValidation(signalA,N7_3_r);
    Y(9,1)=dtwValidation(signalA,N8_3_r);
    Y(10,1)=dtwValidation(signalA,N9_3_r);
else
    
%1D
Y(1,1)=dtw(signalA,N0_3_r);
Y(2,1)=dtw(signalA,N1_3_r);
Y(3,1)=dtw(signalA,N2_3_r);
Y(4,1)=dtw(signalA,N3_3_r);
Y(5,1)=dtw(signalA,N4_3_r);
Y(6,1)=dtw(signalA,N5_3_r);
Y(7,1)=dtw(signalA,N6_3_r);
Y(8,1)=dtw(signalA,N7_3_r);
Y(9,1)=dtw(signalA,N8_3_r);
Y(10,1)=dtw(signalA,N9_3_r);


end
Y
Y=Y./(sum(Y));
T=[0:9]';
barh(T,Y)
xlabel('Distance')
ylabel('Numbers 0-9')
title('DTW')
NumberOutput=find(Y == min(Y))-1

end
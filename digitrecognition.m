function [NI_test,NI_test_r] = digitrecognition(Test)
%DIGITRECOGNITION Final Project Algorithm 
%Fabian E. Parra Gil
%University of Tartu

[NI_test,NI_test_r]=AdjustImageInput(Test)
clc
NeuralNetwork(net4,NI_test_r,WeightMatrix1,WeightMatrix2)

end


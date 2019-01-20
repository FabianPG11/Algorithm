function [NI_test,NI_test_r] = AdjustImageInput(Test)
%ADJUSTIMAGEINPUT Summary of this function goes here
%   Detailed explanation goes here

%i.e. [NI_test,NI_test_r]=AdjustImageInput(Test)
newImg=imresize(Test(:,:,1),[60,60]);
NI_test=1.-double(imbinarize(newImg));
NI_test_r=reshape((1.-NI_test),3600,1);
imshow(NI_test);

end


function [ classtwotargetbin ] = gotoclass3( targetbin )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

N = size(targetbin,2);

for i=1:N
    for j=1:5
        if (targetbin(3,i,j)==1)
            classtwotargetbin(1,i,j)=1;
        else 
            classtwotargetbin(1,i,j)=0;
        end
    end  
end
end


function [ percent ] = testclass( test_class,classnum,target )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

N = size(test_class,1);
correct = 0;

for i=1:N
    if(isequal(target(classnum,i,1),test_class(i)))
        correct = correct +1 ;
    end   
end
percent = correct/ N ;
% percent = correct;
end


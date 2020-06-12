function [ percent ] = svmtest( svm,target,netresult )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
count=0;
N= size(target,1);
for i=1:N   
    if (isequal(svmclassify(svm,[netresult(i,1),netresult(i,2),netresult(i,3)]),target(i))==1)
        count = count + 1;
    end
end
    percent = count/N*100;
end


function [ percent ] = svmtest3( svm,target,netresult )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
count=0;
ones=0;
N= size(target,1);
for i=1:N       
    if (svmclassify(svm,[netresult(i,1),netresult(i,2),netresult(i,3)])==1)
        ones=ones+1;
        if (isequal(svmclassify(svm,[netresult(i,1),netresult(i,2),netresult(i,3)]),target(i))==1)
            count = count + 1;
        end 
    end
end
    percent = count/ones*100;
end


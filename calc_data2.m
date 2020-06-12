function [ test,train] = calc_data2(allSeq,test1)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
for i=1:numel(test1)
    for j=1:numel(allSeq)
        if (strcmp(test1(i).Header, allSeq(j).Header)==1)
            test(i)=allSeq(j);
            allSeq(j)=[];
            break;
        end

    end
end
test=test';
train=allSeq;
end


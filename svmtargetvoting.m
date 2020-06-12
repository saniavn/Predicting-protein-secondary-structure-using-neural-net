function [ newtarget ] = svmtargetvoting( target )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
k = size(target,2);

for i=1:k
    t(1:3)=0;
    t(1)= sum(target(1,i,:));
    t(2)= sum(target(2,i,:));
    t(3)= sum(target(3,i,:));
    [x1 x2] = max(t);
    newtarget(i)=x2;
end

end


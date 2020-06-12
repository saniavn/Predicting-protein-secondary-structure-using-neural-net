function [ count ] = ncount( target)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

N = size(target,2);
count(1:3)=0;

for i=1:N
    [a b] = max (target(:,i,1));
    count(b)= count(b)+1;
    
end


end


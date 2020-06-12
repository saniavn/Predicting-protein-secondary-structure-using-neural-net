function [ output] = convertsvmclass( target_bin,trigger,classnumber,name)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
N=size(target_bin,2);

for i=1:N
    if (netresult(i,classnumber) > trigger)
        output(i)={name};
    else 
        output(i)={'none'};
    end
end
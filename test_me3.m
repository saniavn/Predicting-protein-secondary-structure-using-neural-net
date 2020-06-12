function [ percent ] = test_me3(test_input,test_target)

N = size (test_input,2);
load netclass1.mat;
load netclass2.mat;
load netclass3.mat;

for i=1:N
    temp(1:3)=0;
    temp(1)= sim(netclass1,test_input(:,i));
    temp(2)= sim(netclass2,test_input(:,i));
    temp(3)= sim(netclass3,test_input(:,i));
    [a b] = max(temp(1:3));
    tt(1:3,i)=0;
    tt(b,i)=1;
end
percent = tt;
end


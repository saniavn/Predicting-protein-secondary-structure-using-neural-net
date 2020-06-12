clc;
clear all;

t_per=10;
W=17;
hsize=20;

load savedState.mat;
rng(savedState);

load allSeq-m1.mat;
[test1,train1,savedState]=calc_data(t_per,allSeq);
[train_input_bin1,train_target_bin1]=bin_train(train1,W);
[test_input_bin1,test_target_bin1]=bin_train(test1,W);

clear allSeq;
load allSeq-m2.mat;
[test2,train2]=calc_data2(allSeq,test1);
[train_input_bin2,train_target_bin2]=bin_train(train2,W);
[test_input_bin2,test_target_bin2]=bin_train(test2,W);

clear allSeq;
load allSeq-m3.mat;
[test3,train3]=calc_data2(allSeq,test1);
[train_input_bin3,train_target_bin3]=bin_train(train3,W);
[test_input_bin3,test_target_bin3]=bin_train(test3,W);

clear allSeq;
load allSeq-m4.mat;
[test4,train4]=calc_data2(allSeq,test1);
[train_input_bin4,train_target_bin4]=bin_train(train4,W);
[test_input_bin4,test_target_bin4]=bin_train(test4,W);

clear allSeq;
load allSeq-m5.mat;
[test5,train5]=calc_data2(allSeq,test1);
[train_input_bin5,train_target_bin5]=bin_train(train5,W);
[test_input_bin5,test_target_bin5]=bin_train(test5,W);

net1 = train_net(train_input_bin1,train_target_bin1,hsize);
net2 = train_net(train_input_bin2,train_target_bin2,hsize);
net3 = train_net(train_input_bin3,train_target_bin3,hsize);
net4 = train_net(train_input_bin4,train_target_bin4,hsize);
net5 = train_net(train_input_bin5,train_target_bin5,hsize);

N=size(test_target_bin1,2);
for i=1:N
   o(i,1,:)=sim(net1,test_input_bin1(:,i));
   o(i,2,:)=sim(net2,test_input_bin2(:,i));
   o(i,3,:)=sim(net3,test_input_bin3(:,i));
   o(i,4,:)=sim(net4,test_input_bin4(:,i));
   o(i,5,:)=sim(net5,test_input_bin5(:,i));
end

t=o(:,1,:)+o(:,2,:)+o(:,3,:)+o(:,4,:)+o(:,5,:);
total(:,:)=t(:,1,:);
tt= zeros(size(total));
for i=1:size(total,1)
    [a b] = max(total(i,:));
    tt(i,b)=1;
end
tt=tt';
res(1)=test_me(test_target_bin1,tt)
res(2)=test_me(test_target_bin2,tt)
res(3)=test_me(test_target_bin3,tt)
res(4)=test_me(test_target_bin4,tt)
res(5)=test_me(test_target_bin5,tt)

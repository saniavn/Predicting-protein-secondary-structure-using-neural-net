function [ net] = train_net( input,target,hsize)

% BTF = 'trainlm';
net = newpr(input,target,hsize);
net.trainFcn = 'trainlm';
net.divideParam.trainRatio=60/100;
net.divideParam.valRatio=30/100;
net.divideParam.testRatio=10/100;
[net,tr] = train(net,input,target);

end


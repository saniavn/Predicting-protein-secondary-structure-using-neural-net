function [ input1,input2,target1,target2 ] = ncalc_bin( input,target,percent )
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
    N = size ( input,2);
    for i=1:N
        indx(i)=i;
    end
    t_num =  round(size(input,2)* (percent/100));   
    smp= randsample(indx, t_num);
%     input(:,:,2)=0;
    t = sort(smp,'descend');
    input1(:,:)= input(:,t(:));
    target1(:,:,:)= target(:,t(:),:);
    input(:,t(:))=[];
    target(:,t(:),:)=[];
    input2=input;
    target2=target;
%     for i=1:t_num
% %         i      
%         input1(:,i)=input(:,t(i));
%         target1(:,i,:)=target(:,smp(i),:);
% %         input(:,smp(i),2)=1;
% %         input(:,t(i))=[];
% %         target(:,t(i),:)=[];
%     end
%     
    
    
%     input2=input;
%     target2=target;
%     
end


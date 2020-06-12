function [ per] = test_me(target,test)

correct=0;
    for i=1:size(target,2)
        if (isequal(target(:,i),test(:,i))==1)
            correct= correct+1;
        end
    end
%     correct
per = correct/size(target,2);
end


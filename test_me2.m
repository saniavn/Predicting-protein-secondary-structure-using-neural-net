% return acc of each class f new method
function [ per1 per2 per3] = test_me2(target,test)

% correct=[0 0 0];
% tot = [0 0 0];
%     for i=1:size(target,2)
%         [p1 p2]= max(target(:,i));
%         [q1 q2]= max(test(:,i));
% 		tot(p2)=tot(p2)+1;
%         if (isequal(p2,q2))
%             correct(p2) = correct(p2) +1;
%         end
%     end
% per1 = correct(1)/ tot(1);
% per2 = correct(2)/ tot(2);
% per3 = correct(3)/ tot(3);
% end
% 

correct=[0 0 0];
tot = [0 0 0];
    for i=1:size(target,2)
        [p1 p2]= max(target(:,i));     
        tot(p2)=tot(p2)+1;
        if (isequal(target(:,i),test(:,i))==1)
%             [p1 p2]= max(target(:,i));       
            correct(p2)= correct(p2)+1;    
        end
    end
%     correct
% per = correct/size(target,2);
% per1= correct
per1 = correct(1)/ tot(1);
per2 = correct(2)/ tot(2);
per3 = correct(3)/ tot(3);

end
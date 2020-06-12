N=size(midnn2,1);
for i=1:N
xx(1,1,i)=svmclassify(smlp1,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(1,2,i)=svmclassify(srbf1,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(1,3,i)=svmclassify(spoly1,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(1,4,i)=svmclassify(squa1,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(1,5,i)=svmclassify(meansmlp1,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(1,6,i)=svmclassify(meansrbf1,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(1,7,i)=svmclassify(meanspoly1,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(1,8,i)=svmclassify(meansqua1,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(1,9,i)=svmclassify(meanlin1,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(1,10,i)=svmclassify(midsmlp1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(1,11,i)=svmclassify(midsrbf1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(1,12,i)=svmclassify(midspoly1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(1,13,i)=svmclassify(midsqua1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(1,14,i)=svmclassify(midlin1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);


xx(2,1,i)=svmclassify(smlp2,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(2,2,i)=svmclassify(srbf2,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(2,3,i)=svmclassify(spoly2,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(2,4,i)=svmclassify(squa2,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(2,5,i)=svmclassify(meansmlp2,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(2,6,i)=svmclassify(meansrbf2,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(2,7,i)=svmclassify(meanspoly2,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(2,8,i)=svmclassify(meansqua2,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(2,9,i)=svmclassify(meanlin2,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(2,10,i)=svmclassify(midsmlp2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(2,11,i)=svmclassify(midsrbf2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(2,12,i)=svmclassify(midspoly2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(2,13,i)=svmclassify(midsqua2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(2,14,i)=svmclassify(midlin2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);



xx(3,1,i)=svmclassify(smlp3,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(3,2,i)=svmclassify(srbf3,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(3,3,i)=svmclassify(spoly3,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(3,4,i)=svmclassify(squa3,[netresult(i,1),netresult(i,2),netresult(i,3)]);
xx(3,5,i)=svmclassify(meansmlp3,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(3,6,i)=svmclassify(meansrbf3,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(3,7,i)=svmclassify(meanspoly3,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(3,8,i)=svmclassify(meansqua3,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(3,9,i)=svmclassify(meanlin3,[nn2(i,1),nn2(i,2),nn2(i,3)]);
xx(3,10,i)=svmclassify(midsmlp3,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(3,11,i)=svmclassify(midsrbf3,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(3,12,i)=svmclassify(midspoly3,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(3,13,i)=svmclassify(midsqua3,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
xx(3,14,i)=svmclassify(midlin3,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
end

clear zizi hh;
zizi(1:3,1:N)=0;
for i=1:N
   hh(1,i)=sum(xx(1,1:14,i));
   hh(2,i)=sum(xx(2,1:14,i));
   hh(3,i)=sum(xx(3,1:14,i));
   
   [a b] = max(hh(:,i));
    zizi(b,i)=1;
end

zizi = zizi';

c = confusionmat(test_target_new_split(:,1),zizi(:,1))
% c1 =
% 
%         3148         991
%         1085        2130

c = confusionmat(test_target_new_split(:,2),zizi(:,2))
% c2 =
% 
%         4887         923
%          715         829


c = confusionmat(test_target_new_split(:,3),zizi(:,3))
% c3 =
% 
%         3848         911
%         1025        1570

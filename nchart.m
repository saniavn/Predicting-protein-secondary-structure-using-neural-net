

% %87.29 on TN Class2 --> 4875
N=size(midnn2,1);
twonc2n(1:N)=1;
for i=1:N
    xx(i,1)=svmclassify(spoly2,[netresult(i,1),netresult(i,2),netresult(i,3)]);
    xx(i,2)=svmclassify(midsmlp2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    xx(i,3)=svmclassify(midspoly2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    xx(i,4)=svmclassify(midlin2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     zz(i)=1;
    if ((xx(i,1)+xx(i,2)+xx(i,3)+xx(i,4))<2)
        twonc2n(i)=0;
    end  
%     twonc2p(i,1) = svmclassify(midlin2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
end
twonc2n=twonc2n';
% twonc2p=twonc2p';
% c = confusionmat(test_target_new_split(:,2),twon)

% cn =
% 
%         4875         935
%          710         834



% NN C2 Negative Training
N=size(headmidnn2,1);
clear zz;
for i=1:N
    zz(i,1)=svmclassify(spoly2,[headnetresult(i,1),headnetresult(i,2),headnetresult(i,3)]);
    zz(i,2)=svmclassify(midsmlp2,[headmidnn2(i,1),headmidnn2(i,2),headmidnn2(i,3)]);
    zz(i,3)=svmclassify(midspoly2,[headmidnn2(i,1),headmidnn2(i,2),headmidnn2(i,3)]);
    zz(i,4)=svmclassify(midlin2,[headmidnn2(i,1),headmidnn2(i,2),headmidnn2(i,3)]);
%     zz(i)=1;
%     if ((xx(i,1)+xx(i,2)+xx(i,3)+xx(i,4))<2)
%         twonc2n(i)=0;
%     end  
%     twonc2p(i,1) = svmclassify(midlin2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
end

N=size(midnn2,1);
for i=1:N
    aa(i,1)=sim(net,[xx(i,1);xx(i,2);xx(i,3);xx(i,4)]);    
end
cy=sum(aa(:))/size(aa,1);
nnc2n(1:N)=0;
for i=1:N
    if(aa(i)>cy)
        nnc2n(i)=1;
    end
end
nnc2n=nnc2n';
c = confusionmat(test_target_new_split(:,2),nnc2n(:))
% c =
% % 
%         3643        2167
%          567         977




N=size(midnn2,1);
twonc2n2(1:N)=1;
for i=1:N
    xx(i,1)=svmclassify(meansqua2,[nn2(i,1),nn2(i,2),nn2(i,3)]);
%     xx(i,2)=svmclassify(midsmlp2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
% %     xx(i,3)=svmclassify(midspoly2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     xx(i,4)=svmclassify(midlin2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    zz(i)=1;
    if ((xx(i,1))<1)
        twonc2n2(i)=0;
    end  
end
twonc2n2=twonc2n2';
c = confusionmat(test_target_new_split(:,2),twonc2n2)
% c =
% 
%         4090        1720
%          440        1104

N=size(midnn2,1);
twonc2n3(1:N)=1;
for i=1:N
%     xx(i,1)=svmclassify(squa2,[netresult(i,1),netresult(i,2),netresult(i,3)]);
    xx(i,1)=svmclassify(meansmlp2,[nn2(i,1),nn2(i,2),nn2(i,3)]);
% %     xx(i,3)=svmclassify(midspoly2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     xx(i,4)=svmclassify(midlin2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     zz(i)=1;
    if ((xx(i,1))<1)
        twonc2n3(i)=0;
    end  
end
twonc2n3=twonc2n3';
c = confusionmat(test_target_new_split(:,2),twonc2n3)

% c =
% 
%         4706        1104
%          671         873

%  TP Class2 --> 
N=size(midnn2,1);
twonc2p(1:N)=0;
for i=1:N
%     xx(i,1)=svmclassify(spoly2,[netresult(i,1),netresult(i,2),netresult(i,3)]);
%     xx(i,1)=svmclassify(midsmlp2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     xx(i,3)=svmclassify(midspoly2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    xx(i,2)=svmclassify(midsmlp2,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     zz(i)=1;c
    if (xx(i,2)>0)
        twonc2p(i)=1;
    end  
end
twonc2p=twonc2p';
c = confusionmat(test_target_new_split(:,2),twonc2p)

% c =
% 
%         5352         458
%          948         596




% % on TP Class1 --> 
N=size(midnn2,1);
clear xx;
twonc1p(1:N)=1;
for i=1:N
    xx(i,1)=svmclassify(srbf1,[netresult(i,1),netresult(i,2),netresult(i,3)]);
    xx(i,2)=svmclassify(midsrbf1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    xx(i,3)=svmclassify(midsmlp1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    xx(i,4)=svmclassify(midlin1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    zz(i)=1;
    if ((xx(i,1)+xx(i,2)+xx(i,3)+xx(i,4))<3)
        twonc1p(i)=0;
    end  
end
twonc1p=twonc1p';
c = confusionmat(test_target_new_split(:,1),twonc1p)
% c =
% 
%         3253         886
%         1175        2040

% c = confusionmat(test_target_new_split(:,1),twon)
% % on TP Class1 --> 
N=size(headmidnn2,1);
% twonc1p2(1:N)=1;
clear zz;
for i=1:N
    zz(i,1)=svmclassify(srbf1,[headnetresult(i,1),headnetresult(i,2),headnetresult(i,3)]);
    zz(i,2)=svmclassify(midsrbf1,[headmidnn2(i,1),headmidnn2(i,2),headmidnn2(i,3)]);
    zz(i,3)=svmclassify(midsmlp1,[headmidnn2(i,1),headmidnn2(i,2),headmidnn2(i,3)]);
    zz(i,4)=svmclassify(midlin1,[headmidnn2(i,1),headmidnn2(i,2),headmidnn2(i,3)]);
%     zz(i)=1;
%     if ((xx(i,1)+xx(i,2)+xx(i,3)+xx(i,4))<3)
%         twonc1p2(i)=0;
%     end  
end
% twonc1p2=twonc1p2';
% c = confusionmat(test_target_new_split(:,1),twonc1p)

N=size(midnn2,1);
for i=1:N
    aa(i,1)=sim(netc1,[xx(i,1);xx(i,2);xx(i,3);xx(i,4)]);    
end
cy=sum(aa(:))/size(aa,1);
nnc1p(1:N)=0;
for i=1:N
    if(aa(i)>cy)
        nnc1p(i)=1;
    end
end
nnc1p=nnc1p';
c = confusionmat(test_target_new_split(:,1),nnc1p(:))

% c =
% 
%         3148         991
%         1040        2175



% % on TP Class1 --> 
N=size(midnn2,1);
clear xx;
twonc1p(1:N)=1;
for i=1:N
    xx(i,1)=svmclassify(srbf1,[netresult(i,1),netresult(i,2),netresult(i,3)]);
    xx(i,2)=svmclassify(midsrbf1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    xx(i,3)=svmclassify(midsmlp1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    xx(i,4)=svmclassify(midlin1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    zz(i)=1;
    if ((xx(i,1)+xx(i,2)+xx(i,3)+xx(i,4))<3)
        twonc1p(i)=0;
    end  
end
twonc1p=twonc1p';
c = confusionmat(test_target_new_split(:,1),twonc1p)



% % on TN Class1 --> 
N=size(midnn2,1);
clear xx;
twonc1n(1:N)=1;
for i=1:N
%     xx(i,1)=svmclassify(srbf1,[netresult(i,1),netresult(i,2),netresult(i,3)]);
    xx(i,1)=svmclassify(meansrbf1,[nn2(i,1),nn2(i,2),nn2(i,3)]);
    xx(i,2)=svmclassify(midsqua1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     xx(i,4)=svmclassify(midlin1,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
    if ((xx(i,1)+xx(i,2))<1)
        twonc1n(i)=0;
    end  
end
twonc1n=twonc1n';
c = confusionmat(test_target_new_split(:,1),twonc1n)

% c =
% 
%         2953        1186
%          895        2320





% % on TN Class3 --> 
N=size(midnn2,1);
clear xx;
twonc3n(1:N)=1;
for i=1:N
    xx(i,1)=svmclassify(srbf3,[netresult(i,1),netresult(i,2),netresult(i,3)]);
    xx(i,2)=svmclassify(midsqua3,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     xx(i,3)=svmclassify(midlin3,[midnn2(i,1),midnn2(i,2),midnn2(i,3)]);
%     zz(i)=1;
    if ((xx(i,1)+xx(i,2))<1)
        twonc3n(i)=0;
    end  
end
twonc3n=twonc3n';
c = confusionmat(test_target_new_split(:,3),twonc3n)
% c =
% 
%         1914        2845
%          402        2193



% % on TP Class1 --> 
N=size(headmidnn2,1);
% twonc1p2(1:N)=1;
clear zz;
for i=1:N
    zz(i,1)=svmclassify(srbf3,[headnetresult(i,1),headnetresult(i,2),headnetresult(i,3)]);
    zz(i,2)=svmclassify(midsmlp3,[headmidnn2(i,1),headmidnn2(i,2),headmidnn2(i,3)]);
    zz(i,3)=svmclassify(midlin3,[headmidnn2(i,1),headmidnn2(i,2),headmidnn2(i,3)]);
%     zz(i)=1;
%     if ((xx(i,1)+xx(i,2)+xx(i,3)+xx(i,4))<3)
%         twonc1p2(i)=0;
%     end  
end
% twonc1p2=twonc1p2';
% c = confusionmat(test_target_new_split(:,1),twonc1p)

N=size(midnn2,1);
for i=1:N
    aa(i,1)=sim(netc3,[xx(i,1);xx(i,2);xx(i,3)]);    
end
cy=sum(aa(:))/size(aa,1);
nnc3(1:N)=0;
for i=1:N
    if(aa(i)>cy)
        nnc3(i)=1;
    end
end
nnc3=nnc3';
c = confusionmat(test_target_new_split(:,3),nnc3(:))
% c =
% 
%         2778        1981
%         1478        1117










% 
% aa=size(twonc2n,2);
% counter=1;
% ccc=svmclassify(midsqua1,[midnn2(:,1),midnn2(:,2),midnn2(:,3)]);
% for i=1:aa
%    if(twonc2n(1,i)==0) 
%        ip(counter)= ccc(i);
%        tar(counter)=test_target_new_split(i,1);
%        counter=counter+1;
%    end
% end




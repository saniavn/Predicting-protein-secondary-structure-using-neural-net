function [ test,train,savedState ] = calc_data( t_per,allSeq )

load savedState.mat;

t_num = round(numel(allSeq)* (t_per/100));
test= randsample(allSeq,t_num);
m=numel(allSeq);
for j=1:numel(test)
    for i=1:m
        if (strcmp(test(j).Header,allSeq(i).Header)==1)
            allSeq(i)=[];
            m=m-1;
            break;
        end
    end
end

train = allSeq ;
clear i j m t_num t_per allSeq

end


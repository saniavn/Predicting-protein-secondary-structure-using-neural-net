% xa=zeros(2,513);
for i=1:numel(allSeq)
    aj(i,1)=size(allSeq(i).Sequence,2);
    aj(i,2)=size(allSeq(i).Structure,2);
end
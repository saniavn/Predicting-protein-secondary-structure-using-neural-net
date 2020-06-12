function [input_bin,target_bin ] = bin_train( data,W )

N=numel(data);

%=== binarization of the inputs
for i = 1:N
    seq = double(data(i).Sequence);   % current sequence
    win = hankel(seq(1:W),seq(W:end));  % all possible sliding windows
    myP = zeros(20*W,size(win,2));      % input matrix for current sequence
    for k = 1:size(win, 2)
        index = 20*(0:W-1)' + win(:,k); % input array for each position k
        myP(index,k) = 1;
    end
    data(i).P = myP;
end

cr = ceil(W/2); % central residue position

%=== binarization of the targets
for i = 1:N
    str = double(data(i).Structure); % current structural assignment
    win = hankel(str(1:W),str(W:end)); % all possible sliding windows
    myT = false(3,size(win,2));
    myT(1,:) = win(cr,:) == double('C');
    myT(2,:) = win(cr,:) == double('E');
    myT(3,:) = win(cr,:) == double('H');
    data(i).T = myT;
end

%=== construct input and target matrices
input_bin = double([data.P]); % input matrix
target_bin = double([data.T]); % target matrix

end


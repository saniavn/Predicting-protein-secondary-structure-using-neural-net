clc;
clear all;
load list.mat;
for j=1:size(list,1)
    filename = list(j).name;
    fid=fopen(filename);
    amino_acid = fgets(fid);
    DSSP=fgets(fid);
    fclose(fid);
    temp=0;
    last=0;
    matr(j).Header=filename;
    for i=5: size(amino_acid,2)
        last = last + 1;
        switch amino_acid(i)
            case 'A'
                temp = 1;
            case 'R'
                temp = 2;
            case 'N'
                temp = 3;
            case 'D'
                temp = 4;
            case 'C'
                temp = 5;
            case 'E'
                temp = 6;
            case 'Q'
                temp = 7;
            case 'G'
                temp = 8;
            case 'H'
                temp = 9;
            case 'I'
                temp = 10;
            case 'L'
                temp = 11;
            case 'K'
                temp = 12;
            case 'M'
                temp = 13;
            case 'F'
                temp = 14;
            case 'P'
                temp = 15;
            case 'S'
                temp = 16;
            case 'T'
                temp = 17;
            case 'W'
                temp = 18;
            case 'Y'
                temp = 19;
            case 'V'
                temp = 20;
            case ','
                last=last - 1;

            otherwise
                last= last - 1;

        end
        if (temp > 0) 
            matr(j).Sequence(last)=temp;
            temp = 0;
        end
    end
    last=0;
    for i=6: size(DSSP,2)-1
        switch DSSP(i)
            case 'H'
                t='H';
                last= last+1;
            case 'E'
                t='E';
                last= last + 1;
            case ','
%                 i
            otherwise
                t='C';
                last=last+1;
        end
%         j
        matr(j).Structure(last)=t;
    end
end
allSeq=matr';
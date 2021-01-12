function [tot_letter] = detect_all_letter(im)



line=detect_line(im);
dim1=size(line);
tot_letter=([]);
k=1;

for j=1:dim1(2)
    letter=detect_letter(line,j);
    dim2=size(letter);
    dim2=dim2(2);
    for i=1:dim2
        tot_letter(k).letter=letter(i).letter;
        k=k+1;
    end
end
% 
% dim=size(tot_letter);
% for i=1:dim(2)
%     let_size=size(tot_letter(i).letter);
%     if let_size(1)<100 
%         
end


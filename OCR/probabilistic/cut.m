function [cutletter] = cut(letter)

dim=size(letter);

cutletter=[];
k=1;
sum=0;

for j=1:dim(1)
    for i=1:dim(2)
        sum=sum+letter(j,i);
    end
    
    if sum~=0
            cutletter(k,:)=letter(j,:);
            k=k+1;
    end

  sum=0;
end

cutletter=imresize(cutletter,[150 150]);
end


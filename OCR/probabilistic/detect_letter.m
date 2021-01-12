function [letter] = detect_letter(line,i)
    line=line(i).line;
    rl=0;
    rr=0;
    dim=size(line);
    l_pos=[];
    k=1;
    
    for j=1:dim(2)
        for i=1:dim(1)
            if line(i,j) == 1
                rr=1;
            end
        end
        
        if rr~=rl
            l_pos(k)=j-1;
            k=k+1;
        end
        
        rl=rr;
        rr=0;
    end
    
    dim=size(l_pos);
    dim=dim(2);
    letter=([]);
    k=1;
    
    for i=1:dim/2
        letter(i).letter=line(:,(l_pos(k):l_pos(k+1)));
        k=k+2;
    end
        
end


function [line] = detect_line(im)
 bwim=im;
 
imshow(bwim)
 
 dim=size(bwim);
 
 ru=0;
 rd=0;
 k=1;
 posrig=[];
 
 bwimc=zeros(dim);
 
 for i=1:dim(1)
     for j=1:dim(2)
         if bwim(i,j)==0
             bwimc(i,j)=1;
         end
     end
 end
 
bwim=bwimc;
%imshow(bwimc)
 
    
 for i=1:dim(1)
     for j=1:dim(2)
        if bwim(i,j)==1
            ru=1;
        end
     end
     
     if rd~=ru
         posrig(k)=i;
         k=k+1;
     end
     
     rd=ru;
     ru=0;
 end
 
dim=size(posrig);
k=1;
riga=[];
line=struct([]);

 for i=1:(dim(2))/2
     riga=bwim((posrig(k):posrig(k+1)),:);
     line(i).line=riga;
     %figure, imshow(riga)
     k=k+2;
 end

 dim=size(line);
 dim=dim(2);
 line2=struct([]);
 k=1;
 
 for i=1:dim
    h=size(line(i).line);
    h=h(1);
    
    if h>100
        line2(k).line=line(i).line;
        k=k+1;
    end
 end
 
 line=line2;
end


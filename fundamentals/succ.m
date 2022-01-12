function ListeSucc=succ(sommet,M)
    [n,m]=size(M);
    i=1;
    succ_direct=zeros(1,n);
    succ_indirect=zeros(1,n);
    Sum=[];
    for i=1:n
        j=i;
        if M(sommet,j)==1 then
            succ_direct(i)=j;
            for j=i:n
                if M(i,j)==1 then
                    
                    succ_indirect(i)=j;
                end
            end
        end
        
        
            
    end
    Sum=[succ_direct succ_indirect];
    Sum=Sum(Sum~=0);
          ListeSucc=unique(Sum);
          
         
endfunction
function ListePredec=predec(sommet,M)
    [n,m]=size(M);
    i=1;
    predec_direct=zeros(1,n);
    predec_indirect=zeros(1,n);
    Sum=[];
    for i=1:n
        j=i;
        if M(j,sommet)==1 then
            predec_direct(i)=j;
            for j=i:n
                if M(j,1)==1 then
                    
                    predec_indirect(i)=j;
                end
            end
        end
        
        
            
    end
    Sum=[predec_direct predec_indirect];
    Sum=Sum(Sum~=0);
          ListePredec=unique(Sum);
          
         
endfunction

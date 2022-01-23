function [K,C]=algo_cfc(M)
    [n,m]=size(M);
    K=0;
    C=[];
    W=[];
    ListSucc=[];
    ListPredec=[];
    marquage_pos=zeros(1,n);
    marquage_neg=zeros(1,n);
    for i=1:n
        W=[W n];
    end
    
    for i=1:n
        marquage_pos(W(i))=1;
        marquage_neg(W(i))=1;
        
        ListSucc=succ(W(i),M);
        for j=1:length(ListSucc)
            marquage_pos(ListSucc(j))=1;
        end
        
        ListPredec=predec(W(i),M);
        for j=1:length(ListPredec)
            marquage_neg(ListPredec(j))=1;
        end
        
        K=K+1;
        
        for i=1:n
            if(marquage_pos(i) & marquage_neg(i)) then
            C=[C W]; 
        end
        
       
        end
        


        //W=W-C;
        marquage_pos=zeros(1,n);
        marquage_neg=zeros(1,n);
        
        if(isempty(W))
            break;
        end
        
            
        
    end
endfunction
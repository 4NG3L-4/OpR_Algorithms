function [ Arbre,CoutMin]=kruskal(V)
    [n,m]=size(V);
    poids=[];
    source=[];
    destination=[];
    CoutMin=0;
    Min=0;
    Arbre=[];
    p=[];
    for i=1:n
        for j=1:n
            if(i<j)
                if(V(i,j)~=0)
                    source=[source i];
                    destination=[destination j];
                    poids=[poids V(i,j)];
                end
            end
            
            
        
            end
        end
         p=poids;
        Min=min(p);
        s=length(Arbre);
            for i=1:n
                
                    if(Min == p(i))
                        Arbre=[Arbre source(i) destination(i)];
                        CoutMin=CoutMin+Min;
                        p(i)=0;
                        s=length(Arbre);
                    
                        Min=min(p(p~=0));
                    end
                    
                
                    
             
                    
                    
                end
                
                
                

            
        
    
endfunction
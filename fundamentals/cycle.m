//Algo 1:Propriete (a):
//On ajoute a "solexo1.m"  if isempty(find(diag(Mhat))) alors "pas de circuit"
//Algo2;
function R=cycle(M)
    cherche=zeros(1,size(M,1)); //1--indice ligne; 2-- indice colonne 
    while(~isempty(find(members(M,cherche,'rows'))))//ismember MATLAB
        index=find(members(M,cherche,'rows'));
        //proposition1
        for i=1:length(index)
            M(index(i),:)=[];
            M(:,index(i))=[];
            cherche(index(i))=[];// cherche(end)=[];...
        end
        //proposition2
        //M(index,:)=[];
        //M(:,index)=[];
        //cherche(index)=[];
    end
    if(isempty(M))
        R=0;
    else 
        R=1;
    end
    
        
endfunction
//Deroulement
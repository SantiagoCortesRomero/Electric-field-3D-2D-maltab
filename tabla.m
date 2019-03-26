q=matrizP(:,4);
s=length(q);
E=[];
En=[];

for i=1:s
    E(i,:) = ElectricField(posP,matrizP(i,:),q(i));
    
end

Et=sum(E);
Etn = Normalizar(Et);


% Llenar la tabla con datos

Es=[E ; Et];
    

set(handles.tabla,'data',Es);
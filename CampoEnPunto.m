q=matrizP(:,4);
s=length(q);
E=[];
En=[];

for i=1:s
    E(i,:) = ElectricField(posP,matrizP(i,:),q(i));
    En(i,:) = Normalizar(E(i,:));
end

Et=sum(E);
Etn = Normalizar(Et);

axes(handles.espacio3d);
matrizP(:,4)=[];
for i=1:s
    A=posP - matrizP(i,:);
    if q(i)>0
        Gv3d(matrizP(i,:),A,q(i));
    elseif q(i)<0
        Gv3d(posP,-A,q(i));
    else
        Gv3d(posP,0,q(i));
    end
    hold on
    Carga(matrizP(i,:),0.1,q(i));
end

hold on
Gv3d(posP,Etn,0);

hold on 
Carga(posP,0.1,0)


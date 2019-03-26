
    syms x y z epot

    %matrizP=[3 2 1; 4 3 2; 1 0 1; 0 2 2];                                  %Matriz que contiene la posición de
                                                                            %cada uno de los vectores
    %q=[5 4 -2 -5];                                                         %carga de los vectores

    posPx=matrizP(:,1);
    posPy=matrizP(:,2);
    posPz=matrizP(:,3);
    q=matrizP(:,4);
            
    L=max(max(abs(posPx),max(abs(posPy),abs(posPz))))+2;                    %domain to plot our vector field, después para que la gráfica se acomode
                                                                            %a la gráfica mediante la
                                                                            %función meshgrid

    epot=q(1)/sqrt((x-posPx(1))^2+(y-posPy(1))^2+(z-posPz(1))^2);           %Cálculo del potencial eléctrico.
    for i=2:length(posPx)
        epot=epot+q(i)/sqrt((x-posPx(i))^2+(y-posPy(i))^2+(z-posPz(i))^2);  %adding all the potentials together
    end
    
Eo = 8.854187817*10^(-12);
k = 1/(4*pi*Eo);
%val=matlabFunction(epot,'vars', [x y z]);                                   %esta es una variable que cree para hacer las lineas equipotenciales, pero las hará su puta madre
E=-k*gradient(epot,[x,y,z]);                                                % Cálculo del campo eléctrico en base del gradiente del campo.

[X,Y,Z]=meshgrid(-L:1.8:L);

m1 = matlabFunction(E(1),'vars',[x y z]); %Esto es para gráficar la función en cada una de los ejes
m2 = matlabFunction(E(2),'vars',[x y z]);
m3 = matlabFunction(E(3),'vars',[x y z]);
Ex=m1(X,Y,Z);
Ey=m2(X,Y,Z);
Ez=m3(X,Y,Z);

A=sqrt(Ex.^2+Ey.^2+Ez.^2+290*sqrt(max(q)*abs(min(q))));      % scaling the vectors
  ex=Ex./A;                                                  % if you dont want vectors scaled,
  ey=Ey./A;                                                  % delete this 3 lines 
  ez=Ez./A;                                                  % and replace ex and ey by Ex and Ey

h=quiver3(X,Y,Z,ex,ey,ez);                                   % Aquí sucede la mágia

set (h, 'AutoScale', 'on')
set (h, 'maxheadsize', 0.2)
set (h, 'AutoScaleFactor', 0.8)
set (h,'Color', [0.3010,0.7450,0.9330])

 hold on
 xlabel('x')
 ylabel('y')
 zlabel('z')


     for i=1:length(posPx)
        if q(i)>0
            clr='ro';
        elseif  q(i)<0
            clr='bo';
        else
            clr='ko';
        end
        scatter3(posPx(i),posPy(i),posPz(i),'filled',clr) 
     end
      

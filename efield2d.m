syms x y epot  


Px=matrizP(:,1);
Py=matrizP(:,2);
q=matrizP(:,4);

  s=abs(0.8);
  sq=size(q);
  sy=size(Py);
  sx=size(Px);
  
  L=max(max(abs(Px),abs(Py)))+2;  %domain to plot our vector field

   epot=q(1)/sqrt((x-Px(1))^2+(y-Py(1))^2);

   for i=2:length(Px)
        epot=epot+q(i)/sqrt((x-Px(i))^2+(y-Py(i))^2); %adding all the potentials together
   end

  val=matlabFunction(epot,'vars', [x y]);
  K2=10;                                            %scale factor keep around 10;
  E=-K2*gradient(epot,[x,y]);

  [X,Y]=meshgrid(-L:s:L);

  m1 = matlabFunction(E(1), 'vars', [x y]);
  m2 = matlabFunction(E(2), 'vars', [x y]);
  Ex=m1(X,Y);
  Ey=m2(X,Y);

  A=sqrt(Ex.^2+Ey.^2+290*sqrt(max(q)*abs(min(q)))); % scaling the vectors
  ex=Ex./A;                                         % if you dont want vectors scaled,
  ey=Ey./A;                                         % delete this 3 lines 
  h=quiver(X,Y,ex,ey);                              % and replace ex and ey by Ex and Ey

  set (h, 'AutoScale', 'on');
  set (h, 'maxheadsize', 0.1);
  set (h, 'AutoScaleFactor', 0.8);
  set (h,'Color', [0.9,0.6,0.1] )
  K=50; 
  hold on
  H=ezcontour(val,[-L,L],K*round(sqrt(L*length(Px))));  % the number of equipotentials can be changed by changin K, recomended 10-50;
  
  set(H,'LevelStep',2)

  title('electric field and equipotentials')
  xlabel('x')
  ylabel('y')
  for i=1:length(Px)
    plot(Px(i),Py(i))
  end
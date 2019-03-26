function GenerarCargas = Carga(posQ,r,q)
x0 = posQ(1);
y0 = posQ(2);
z0 = posQ(3); 
[x,y,z] = sphere();
surf(abs(r)*x+x0,abs(r)*y+y0,abs(r)*z+z0);
colormap('cool');
shading interp
end


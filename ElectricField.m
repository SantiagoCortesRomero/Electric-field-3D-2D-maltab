%Función de campo eléctrico por superposición
function CampoElectrico = ElectricField(posP,posQ,magQ)
    Eo = 8.854187817*10^(-12);
    k = 1/(4*pi*Eo);
    
    
    x = posP(1) - posQ(1);
    y = posP(2) - posQ(2);
    z = posP(3) - posQ(3);
    
    R = sqrt(x^2+y^2+z^2);
    U = [x/R, y/R, z/R];
    
    E = ((k*magQ)/(R^2))*U;
   
    
    CampoElectrico = E;

end


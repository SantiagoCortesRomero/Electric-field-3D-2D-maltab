function VectorNormalizado = Normalizar(Vector)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    Vx = Vector(1);
    Vy = Vector(2);
    Vz = Vector(3);
    normaV = sqrt(Vx^2 + Vy^2 + Vz^2);
    
    VectorNormalizado = [Vx/normaV,Vy/normaV,Vz/normaV];
end


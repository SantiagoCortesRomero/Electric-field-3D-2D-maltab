function GraphVectors = Gv3d( posP, E1n,q)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    posPx = posP(1);
    posPy = posP(2);
    posPz = posP(3);
    
    E1nx = E1n(1);
    E1ny = E1n(2);
    E1nz = E1n(3);
    
    h=quiver3(posPx,posPy,posPz,E1nx,E1ny,E1nz,'k');
    if q>0
        color='r';
    elseif q<0
        color='b';
    else 
        color=[0.4660,0.6740,0.1880];
    end
    set (h,'Color',color)
    grid on
end


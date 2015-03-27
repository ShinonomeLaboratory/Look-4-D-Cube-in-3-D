GenerateMap
for r=-10:0.01:10
    i=sin(r);
    j=cos(r);
    x=sin(i);
    y=cos(i);
    z=sin(j);
    w=cos(j);
    RV=[x y z w];
    DrawIn3D(RV);
    pause(0.01);
end

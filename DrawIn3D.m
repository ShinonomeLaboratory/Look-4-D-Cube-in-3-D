function DrawIn3D(RefVector)
%close all;
load('Cube4D.mat','dotSpace','ConnectMatrix')
PM=eye(4);%Projection Matrix
PM(1,:)=RefVector;
PM=Schmidt(PM);
dotIn3D=zeros(16,3);
for i=1:16
    x=dot(PM(2,:),dotSpace(i,:));
    y=dot(PM(3,:),dotSpace(i,:));
    z=dot(PM(4,:),dotSpace(i,:));
    dotIn3D(i,:)=[x y z];
end
figure(1);
plot3(0,0,0,'r*');
hold on
for i=1:16
    for j=1:16
        if(ConnectMatrix(i,j)==1)
            x=[dotIn3D(i,1)  dotIn3D(j,1)];
            y=[dotIn3D(i,2)  dotIn3D(j,2)];
            z=[dotIn3D(i,3)  dotIn3D(j,3)];
            plot3(x,y,z,'-')
        end
    end
end
hold off
end

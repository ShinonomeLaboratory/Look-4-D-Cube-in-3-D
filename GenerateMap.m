t=1;
dotSpace=zeros(16,4);
for x=0:1
    for y=0:1
        for z=0:1
            for w=0:1
                dotSpace(t,:)=[x y z w];
                t=t+1;
            end
        end
    end
end

ConnectMatrix=zeros(16,16);
for i=1:16
    for j=1:16
        Difference=sum(dotSpace(i,:)==dotSpace(j,:));
        if Difference==3
            ConnectMatrix(i,j)=1;
        else
            ConnectMatrix(i,j)=0;
        end
    end
end
dotSpace=dotSpace-0.5;
dotSpace=dotSpace.*2;
save('Cube4D.mat','dotSpace','ConnectMatrix')

function [OG] = Schmidt(inMatrix)

numVecs=size(inMatrix);
Dims=numVecs(2);
numVecs=numVecs(1);
OG=inMatrix;

for i=2:numVecs
    for j=1:(i-1)
        Scale=dot(inMatrix(i,:),OG(j,:))/dot(OG(j,:),OG(j,:));
        Projection=Scale.*OG(j,:);
        OG(i,:)=OG(i,:)-Projection;
    end
end

for i=1:numVecs
    IP=sqrt(dot(OG(i,:),OG(i,:)));
    OG(i,:)=OG(i,:)./IP;
end

end

% Dimiourgia tou pinaka A
A=zeros(128,128);
for i=1:128
    for j=1:128
        A(i,j)=(-1)^abs(i-j)/((i-j)^2);
        if i==j
            A(i,j)=(pi^2)/3;
        end
    end
end
% Dimiourgia tou pinaka L me tn algori8mo
% tou Cholesky
L=zeros(128,128);
for i=1:128
    for j=1:i-1
        sum=0;
        for k=1:j-1
            sum=sum+L(i,k)*L(j,k);
        end
        L(i,j)=(A(i,j)-sum)/L(j,j);
    end
    sum=0;
    for k=1:i-1
        sum=sum+L(i,k)^2;
    end
    L(i,i)=(A(i,i)-sum)^(1/2);
end
% Euresi tis orizousas tou L
detL=1;
for i=1:128
   detL=detL*L(i,i); 
end
% Euresi tis orizousas tou A
detA=detL^2
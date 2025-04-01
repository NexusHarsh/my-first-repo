%Inverse Z-Transform

x=input("enter the value 1")
y=input("enter the value 2")
[R P K ]=residuez(x,y)
syms n
sum=0;
for k=1:length (R);
    sum=sum+R(k)*P(k)^n;
end
disp(sum);
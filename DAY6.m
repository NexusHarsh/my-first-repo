%Convolution using conv function

signal1=input("enter signal1")
signal2=input("enter signal2")
conv(signal1,signal2)

%Another Method
x1=input("signal 1")
x2=input("signal 2")
x2=x2'
l1=length(x1);l2=length(x2);
M=x2*x1;
for k=1:(l1+l2-1)
    s_c=0
   for i=1:l2
        for j=1:l1
           if i+j-1==k
               s_c=s_c+M(i,j);
           end
        end
end
out(k)=s_c;
end
disp('The linear convolution is:')
disp(out)
stem(out)
title("The linear convolution is:")
grid on


%continue

clear;
clc;
x1=input("signal 1")
x2=input("signal 2")
l1=length(x1);l2=length(x2);
M=x1'*x2;
M=rot90(M);
[r,c]=size(M);
di=-(r-1)
for k=1:(l1+l2-1)
    out(k)=sum(diag(M,di));
    di=di+1;
end
disp(out)
stem(out)
title("The linear convolution is:")
grid on




% Z-transform

syms z
z^2

%Z-transform
Signal=input("enter a signal")
po=input("point")
len=length(Signal);
syms Z
s=0;
for k=1:len(Signal)
    s=s+Signal(k)*(Z^-(k-po))
end
disp(s)

%Another method
Signal=input("enter a signal")
po=input("point")
syms Z;
zd=z*ones(1:length(Signal));
a=1:length(Signal);
ind=a-po;
zt=Signal.*(zd.^(-ind));
disp(sum(zt))
    

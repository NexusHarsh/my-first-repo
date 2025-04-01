%DFT and IDFT
clear;
x=input('enter the signal');
N=length(x);
X=zeros(1,N);
% DFT
for k=1:N
    for n=1:N
        X(k)=X(k)+(x(n)*exp(-(1j*2*pi*(k-1)*(n-1))/N));
    end
end
%IDFT
x_1=zeros(1,N);
for n=1:N
    for k=1:N
        x_1(n)=x_1(n)+(x(k)*exp((1j*2*pi*(k-1)*(n-1))/N));
    end
   x_1(n)=(1/N)*x_1(n);
end

disp("the input singnal is:");
disp(x);
disp("The DFT of x(n) is:");
disp(X);
disp("the IDFT is:");
disp(x_1);

%IDFT-DFT

for k=1:N
    for n=1:N
        X(k)=X(k)+(x_1(n)*exp(-(1j*2*pi*(k-1)*(n-1))/N));
    end
end
disp(x_1);
disp("The DFT of x(n) is:");
disp(x);

%IDFT x(k) to DFT x(n)...

clear
x=input('enter the idft signal')
N=length(x);
X=zeros(1,N);
x_1=zeros(1,N);
for n=1:N
    for k=1:N
        x_1(n)=x_1(n)+(x(k)*exp((1j*2*pi*(k-1)*(n-1))/N));
    end
   x_1(n)=(1/N)*x_1(n);
end
disp("the DFT is:");
disp(x_1);

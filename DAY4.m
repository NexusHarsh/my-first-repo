clear
t=-2:0.01:12;
for k=1:length(t)
    if t(k)>=0 && t(k)<=2
        y(k)=2;
    elseif t(k)>=2 && t(k)<=6
        y(k)=(2/4)*(t(k)-2)+2;
    elseif t(k)>=6 && t(k)<=10
        y(k)=4;
    else
        y(k)=0;
    end
end
plot(t,y)
grid on

t=-2:0.01:12;
for k=1:length(t)
    if t(k)>=0 && t(k)<=2
        y(k)=5;
    elseif t(k)>=2 && t(k)<=6
        y(k)=-(3/4)*(t(k)-6)+2;
    elseif t(k)>=6 && t(k)<=10
        y(k)=2;
    else
        y(k)=0;
    end
end
plot(t,y)
grid on


time=0:0.1:10;
a=1
pi=3.14
y=sin(time)
length(time)
length(y)
y=sin(time)
length(y)
for k=1:length(time)
    if k>=a && k<=pi+a
        y(k)=sin(time)
    end
end
plot(time,y)
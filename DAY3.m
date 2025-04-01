for k=(1:5);
    disp(k)
end

while (k<=5);
    disp('EEE')
    k=k+1
end

time=0:0.1:10;
y=sin(time)
length(time)
length(y)
y=sin(time)
length(y)
y2=cos(time);
plot(time,y)
hold on
plot(time,y2)
grid on

subplot(221)
subplot(222)
subplot(223)
subplot(224)

time=-5:0.1:10;
for k=1:length(time)
    if time(k)>=0
        y_us(k)=1;
    else
        y_us(k)=0;
    end 
end
subplot(221)
plot(time,y_us)

time=-5:10;
for k=1:length(time)
    if time(k)==2
        y_im(k)=1;
    else
        y_im(k)=0;
    end 
end
subplot(222)
stem(time,y_im)

time=-5:10;
y_r=time
subplot(223)
plot(time,y_r)

time=-5:0.1:10;
y_ex=exp(time)
subplot(224)
plot(time,y_ex)




% Experiment-3: Shifting and Folding Operations on Discrete-Time Signals

clc;
clear;

% Create the time array (x-axis)
n = -2:5;
y = [-1, 3, -2, 0, 2, 4, -6, 4];  % Original signal

% Shift and fold operations
n1 = n + 2;   % Shift x(n+2)
n2 = n + 3;   % Shift x(n+3)
n3 = -n - 2;  % Fold and shift x(-n-2)
n4 = -n + 2;  % Fold and shift x(-n+2)
n5 = n - 2;   % Shift x(n-2)
n6 = -n + 1;  % Fold and shift x(-2n+1)

% Store time arrays in a matrix for plotting
x_axis = {n1, n2, n3, n4, n5, n6};
titles = {'x(n+2)', 'x(n+3)', 'x(-n-2)', 'x(-n+2)', 'x(n-2)', 'x(-2n+1)'};

% Plotting each operation
for i = 1:6
    subplot(2, 3, i);
    stem(x_axis{i}, y, 'filled');
    title(titles{i});
    xlabel('Time');
    ylabel('Magnitude');
    grid on;
    xlim([-8, 8]);
    ylim([-5, 7]);
end

%sinx(pi/6>=sinx<=pi+pi/6)
t=0:0.01:2*pi
for i=1:length(t)
    if t(i)>=pi/6 && t(i)<=(pi+pi/6)
        y(i)=sin(t(i));
    else
        y(i)=0;
    end
end
plot(t,y)
title('sinx(pi/6>=sinx<=pi+pi/6)')
grid on

t=0:0.01:2*pi;y=sin(t)
for i=1:length(t)
    if y(i)>=0.5
        y(i)=0.5;
    elseif y(i)<=-0.5
        y(i)=-0.5;
    end
end
plot(t,y)
grid on

%Discrete signal 01
signal=input("enter the signal")
len=length(signal);
time=1:len;
po=input("point");
time_n=time-po;
stem(time_n,signal)
title("DISCRETE SIGNAL")
grid on

%Discrete signal 02
clear;
clc;
signal=input("enter the signal")
len=length(signal);
time=1:len;
po=input("point");
time_n=time-po;
subplot(321)
stem(time_n,signal)
title("h(n)")
grid on
subplot(322)
stem(-1*time_n,signal)
title("h(-n)")
grid on
subplot(323)
stem(time_n+3,signal)
title("h(n-3")
grid on
subplot(324)
stem(time_n-4,signal)
title("h(n+4)")
grid on
subplot(325)
stem(-1*time_n+1,signal)
title("h(-n-1)")
grid on
subplot(326)
stem(-1*time_n-2,signal)
title("h(-n-2)")
grid on




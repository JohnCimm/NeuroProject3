% GROSS, ignore, does stuff

u1 = load("user array.mat")
r1 = load("real intensity.mat" ) 
u2 = load("intensity user 2.mat")
r2 = load("real intensity 2.mat" ) 
u3 = load("intensity user 3.mat")
r2 = load("real intensity 2.mat" ) 
u4 = load("intensity user 4.mat")
u5 = load("intensity user 5.mat")
u6 = load("intensity user 6.mat")
u7 = load("intensity user 7.mat")
u8 = load("intensity user 8.mat")
u9 = load("intensity user 9.mat")
user_a = []
user_a=[user_a,u1.user_input(1:10)]
user_a=[user_a,u2.user_input(1:10)]
user_a=[user_a,u3.user_input(1:10)]
user_a=[user_a,u4.user_input(1:10)]
user_a=[user_a,u5.user_input(1:10)]
user_a=[user_a,u6.user_input(1:10)]
user_a=[user_a,u7.user_input(1:10)]
user_a=[user_a,u8.user_input(1:10)]
user_a=[user_a,u9.user_input(1:10)]

user_f = []
user_f =[user_f ,u1.user_input(11:20)]

user_f =[user_f,u2.user_input(11:19)]
user_f =[user_f ,u3.user_input(11:20)]
user_f =[user_f,u4.user_input(11:20)]
user_f =[user_f,u5.user_input(11:20)]
user_f =[user_f ,u6.user_input(11:20)]
user_f =[user_f ,u7.user_input(11:20)]
user_f =[user_f ,u8.user_input(11:20)]
user_f =[user_f ,u9.user_input(11:20)]
r1 = load("real intensity.mat" ) 
r2 = load("real intensity 2.mat")
r3 = load("real intensity 3.mat" ) 

r4 = load("real intensity 4.mat")
r5 = load("real intensity 5.mat")
r6 = load("real intensity 6.mat")
r7 = load("real intensity 7.mat")
r8 = load("real intensity 8.mat")
r9 = load("real intensity 9.mat")
real_a = []
real_a=[real_a,r1.real_val(1:10)]
real_a=[real_a,r2.real_val(1:10)]
real_a=[real_a,r3.real_val(1:10)]
real_a=[real_a,r4.real_val(1:10)]
real_a=[real_a,r5.real_val(1:10)]
real_a=[real_a,r6.real_val(1:10)]
real_a=[real_a,r7.real_val(1:10)]
real_a=[real_a,r8.real_val(1:10)]
real_a=[real_a,r9.real_val(1:10)]
real_f = []
real_f =[real_f ,r1.real_val(11:20)]

real_f =[real_f ,r2.real_val(11:19)]
real_f =[real_f ,r3.real_val(11:20)]
real_f =[real_f ,r4.real_val(11:20)]
real_f =[real_f ,r5.real_val(11:20)]
real_f =[real_f ,r6.real_val(11:20)]
real_f =[real_f ,r7.real_val(11:20)]
real_f =[real_f ,r8.real_val(11:20)]
real_f =[real_f ,r9.real_val(11:20)]

%% Parametric vs nonparametric (both unparametric)
f_u = adtest(user_f)
a_u = adtest(user_a)
%% kruskalwallis test for both amplitude and frequency
[p1,tbl1,stats1] = kruskalwallis(user_f,real_f, 'off')
[p2,tbl2,stats2] = kruskalwallis(user_a,real_a, 'off')
%hold on;
%p1  = signrank(user_f,real_f)
%p2  = signrank(user_a,real_a)

%histogram(u1.user_input(6:10))
%histogram(r1.real_val)
groupOrder = (6)*((real_a-1)/(9))  + 2.
%boxplot(MPG,groupingVariables,"Orientation","horizontal", ...
%    "GroupOrder",groupOrder)
%xlabel("MPG")
%title("MPG by Origin and Year")
buffer_freq = zeros([1,length(real_f)]);
b2 = linspace(50,100,10);
for i = 1:length(real_f)
    n = real_f(i);
    buffer_freq(i) = b2(n);
end


buffer_amp = zeros([1,length(real_a)]);
b1 = linspace(2,8,10);
for i = 1:length(real_a)
    n = real_a(i);
    buffer_amp(i) = b1(n);
end


%% More gross code
i = 1
user_i = []

for i= 1:10
user_i = [user_i ; [u1.user_input(i),u2.user_input(i),u3.user_input(i),u4.user_input(1),u5.user_input(i),u6.user_input(i),u7.user_input(i),u8.user_input(i),u9.user_input(i)]]
end
%histogram(user_a)

figure(1)

boxplot(user_a,buffer_amp)
fi = polyfit(user_a,buffer_amp,1)
x1 = 0.554.*b1 + 3.2506
hold;
plot(x1,b1)
plot
title('Amplitude')
hold off
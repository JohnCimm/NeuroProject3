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
user_a1=[u1.user_input(1:10)]
user_a2=[u2.user_input(1:10)]
user_a3=[u3.user_input(1:10)]
user_a4=[u4.user_input(1:10)]
user_a5=[u5.user_input(1:10)]
user_a6=[u6.user_input(1:10)]
user_a7=[u7.user_input(1:10)]
user_a8=[u8.user_input(1:10)]
user_a9=[u9.user_input(1:10)]

user_f = []
user_f1 =[u1.user_input(11:20)]

user_f2 =[u2.user_input(11:19)]
user_f3 =[u3.user_input(11:20)]
user_f4 =[u4.user_input(11:20)]
user_f5 =[u5.user_input(11:20)]
user_f6 =[u6.user_input(11:20)]
user_f7 =[u7.user_input(11:20)]
user_f8 =[u8.user_input(11:20)]
user_f9 =[u9.user_input(11:20)]
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
real_a1=[r1.real_val(1:10)]
real_a2=[r2.real_val(1:10)]
real_a3=[r3.real_val(1:10)]
real_a4=[r4.real_val(1:10)]
real_a5=[r5.real_val(1:10)]
real_a6=[r6.real_val(1:10)]
real_a7=[r7.real_val(1:10)]
real_a8=[r8.real_val(1:10)]
real_a9=[r9.real_val(1:10)]
real_f = []
real_f1 =[r1.real_val(11:20)]

real_f2 =[r2.real_val(11:19)]
real_f3 =[r3.real_val(11:20)]
real_f4 =[r4.real_val(11:20)]
real_f5 =[r5.real_val(11:20)]
real_f6 =[r6.real_val(11:20)]
real_f7 =[r7.real_val(11:20)]
real_f8 =[r8.real_val(11:20)]
real_f9 =[r9.real_val(11:20)]

p1 = ranksum(user_a1,real_f1)
p2 = ranksum(user_a2(1:9),real_f2)
p3 = ranksum(user_a3,real_f3)
p4 = ranksum(user_a4,real_f4)
p5 = ranksum(user_a5,real_f5)
p6 = ranksum(user_a6,real_f6)
p7 = ranksum(user_a7,real_f7)
p8 = ranksum(user_a8,real_f8)
p9 = ranksum(user_a9,real_f9)

% FIGURE 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,3,1) % Figure 5

boxplot([user_a1',user_f1'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')
lgd1 = sprintf('P-value =.%f', p1); % legend 

text(0.75,9,lgd1)

title('User 1')
subplot(3,3,2)
boxplot([user_a2(1:9)',user_f2'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')
title('User 2')
lgd2 = sprintf('P-value =.%f', p2); % legend 

text(0.75,9,lgd2)
subplot(3,3,3)
boxplot([user_a3',user_f3'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')

text(2, 9, sprintf('P-value =.%f', p3)); % legend 
title('User 3')



subplot(3,3,4)
boxplot([user_a4',user_f4'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')
title('User 4')
text(0.75, 9, sprintf('P-value =.%f', p4)); % legend
subplot(3,3,5)
boxplot([user_a5',user_f5'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')
title('User 5')
text(0.75, 9, sprintf('P-value =.%f', p5)); % legend
subplot(3,3,6)
boxplot([user_a6',user_f6'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')
text(1.5, 1, sprintf('P-value =.%f', p6)); % legend
title('User 6')
subplot(3,3,7)
boxplot([user_a7',user_f7'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')
text(1.5, 1, sprintf('P-value =.%f', p7)); % legend
title('User 7')
subplot(3,3,8)

boxplot([user_a8',user_f8'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')
text(1.5, 9, sprintf('P-value =.%f', p8)); % legend
title('User 8')
subplot(3,3,9)
boxplot([user_a9',user_f9'],'Labels',{'Amplitude','Frequency'})
ylabel('Percieved Intensity')
text(1.5, 1, sprintf('P-value =.%f', p9)); % legend
title('User 9')
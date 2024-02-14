clear; close all; clc

var1 = load(".\substitute\main\output\node19.out");
var2 = load(".\substitute - different analyze time\main\output\node19.out");

figure
plot(var1(:,1),var1(:,2),'k');
hold on
plot(var2(:,1),var2(:,2),'r--');
hold on
legend("等步长","小步长")
% 
figure
plot(var1(:,1),var1(:,3),'k');
hold on
plot(var2(:,1),var2(:,3),'r--');
hold on
legend("等步长","小步长")


%%
data = [var1(:,1),var1(:,2)*1e3,var2(:,2)*1e3];
save("compareDispx_differentDt.txt","data","-ascii");

data = [var1(:,1),var1(:,3)*1e3,var2(:,3)*1e3];
save("compareDispy_differentDt.txt","data","-ascii");

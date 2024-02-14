clear; close all; clc

var1 = load(".\coarse\node19.out");
var2 = load(".\fine\node19.out");
var3 = load(".\substitute\main\output\node19.out");

figure
plot(var1(:,1),var1(:,2),'--g');
hold on
plot(var2(:,1),var2(:,2),'k');
hold on
plot(var2(:,1),var2(:,2),'-.r');
hold on
plot(var3(:,1),var3(:,2),"--b");
hold on
legend("粗糙","精细","替换隐式","替换半显式")
% 
figure
plot(var1(:,1),var1(:,2),'--g');
hold on
plot(var2(:,1),var2(:,2),'k');
hold on
plot(var2(:,1),var2(:,2),'-.r');
hold on
plot(var3(:,1),var3(:,2),"--b");
hold on
legend("粗糙","精细","替换隐式","替换半显式")

%%
data = [var1(:,1),var1(:,2)*1e3,var2(:,2)*1e3,var2(:,2)*1e3,var3(:,2)*1e3];
save("compareDispx_differentModel.txt","data","-ascii");

data = [var1(:,1),var1(:,3)*1e3,var2(:,3)*1e3,var2(:,3)*1e3,var3(:,3)*1e3];
save("compareDispy_differentModel.txt","data","-ascii");


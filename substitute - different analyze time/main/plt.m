clear; close all; clc


substitute = load(".\output\node19.out");
standard = load("standard.out");
fine = load("fine.out");
% nsm = load("NSM.txt");

figure
plot(standard(:,1),'k');
hold on
plot(fine(:,1),'--b');
hold on
plot(fine(:,1),'-.g');
hold on
plot(substitute(:,1),"--r");
hold on
legend("粗糙","精细","替换隐式","替换半显式")
% 
figure
plot(standard(:,2),'k');
hold on
plot(fine(:,2),'--b');
hold on
plot(fine(:,2),'-.g');
hold on
plot(substitute(:,2),"--r");
hold on
legend("粗糙","精细","替换隐式","替换半显式")

%%
% 
% load maintime.in
% load subtime.in
% 
% load node8mainForce1.in;
% load node8mainForce2.in;
% load node8mainForce3.in;
% load node8mainForce4.in;
% load node8mainForce5.in;
% 
% load node8SubForce1.in;
% load node8SubForce2.in;
% load node8SubForce3.in;
% load node8SubForce4.in;
% load node8SubForce5.in;
% 
% figure
% plot(maintime,node8mainForce5);
% hold on
% plot(subtime,node8SubForce5,"--");
% legend("main","sub")

% figure
% plot(node13SubForce3(1:200)+node13mainForce3(1:200))

%%

% std = load("output\node8.out");
% sub = load("..\sub\node8Disp1.in");
% 
% figure
% plot(std(:,1))
% hold on
% plot(sub(2:end),'--')




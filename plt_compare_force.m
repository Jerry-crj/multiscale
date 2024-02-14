clear; close all; clc

load(".\substitute\main\maintime.in");

load(".\substitute\main\node8mainForce1.in");
load(".\substitute\main\node8mainForce2.in");
load(".\substitute\main\node8mainForce3.in");
load(".\substitute\main\node8mainForce4.in");
load(".\substitute\main\node8mainForce5.in");

load(".\substitute\main\node8SubForce1.in");
load(".\substitute\main\node8SubForce2.in");
load(".\substitute\main\node8SubForce3.in");
load(".\substitute\main\node8SubForce4.in");
load(".\substitute\main\node8SubForce5.in");

figure
plot(maintime,node8mainForce3);
hold on
plot(maintime,node8SubForce3,"--");
legend("main","sub")

%%

data = [maintime,node8mainForce1,node8SubForce1];
save("compareFx.txt","data","-ascii");

data = [maintime,node8mainForce2,node8SubForce2];
save("compareFy.txt","data","-ascii");

data = [maintime,node8mainForce3,node8SubForce3];
save("compareFz.txt","data","-ascii");

data = [maintime,node8mainForce4,node8SubForce4];
save("compareMx.txt","data","-ascii");

data = [maintime,node8mainForce5,node8SubForce5];
save("compareMy.txt","data","-ascii");

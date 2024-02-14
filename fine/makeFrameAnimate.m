clear; clc

system("del *.plt");

factor = 5.0e2;
gap = 1;
frameEachStage = 20;

rstStr = strcat(pwd,"\output\recordEachFrameNodeDispl");
dirOutput=dir(fullfile(rstStr)); %%获取主目录下所有文件夹与文件

totalStep=size(dirOutput,1) - 2;%%获取数量
outputStep = floor(totalStep/gap);
frameNum = ceil(outputStep/frameEachStage);

list = zeros(frameEachStage,frameNum);
for i = 1:outputStep
    list(i) = (i-1)*gap+1;
end

crdTransf = load("crdTransformations.txt");
eleCrdTransf = load("eleCrdTransf.txt");
% ksi = [0.0,0.046910,0.230765,0.5,0.769234,0.953089,1.0];
ksi = [0.0,1.0];


for i = 1:frameNum
    fidA = fopen(['frameVibration',num2str(i,'%03d'),'.plt'],'w+');
    for j = 1:frameEachStage
        if list(j,i) ~= 0
            str1 = strcat(pwd,"\output\location.out");
            str2 = strcat(pwd,"\output\recordEachFrameNodeDispl\frame_",num2str(list(j,i)),".out");
            str3 = strcat(pwd,"\output\recordEachFrameLocalForce\frame_",num2str(list(j,i)),".out");
            str4 = strcat(pwd,"\output\recordEachFrameSectionForce\frame_",num2str(list(j,i)),".out");
            location = load(str1);
            displacement = load(str2);
            localForce = load(str3);
            sectionForce = load(str4);
            connectedNodeInElement = localForce(:,1:3);
            localForce(:,1:3) = [];
            sectionForce(:,1:3) = [];
            for m = length(ksi)-2:-1:1
                sectionForce(:,4*m) = [];
            end

            fprintf(fidA,"%s \n",'VARIABLES = "X","Y","Z","P","Mx","My"');
%             fprintf(fidA,"%s %d %s \n",'ZONE T = "',list(j,i),['", N=',num2str(7*size(sectionForce,1)),',E=',num2str(6*size(sectionForce,1)),',f=FEPOINT,et=LINESEG']);
            fprintf(fidA,"%s %d %s \n",'ZONE T = "',list(j,i),['", N=',num2str(66),',E=',num2str(33),',f=FEPOINT,et=LINESEG']);

            counte = 0;
            countn = 0;
            eleList = [];

            for k = 1:size(localForce,1)
                index0 = find(eleCrdTransf(:,1)==connectedNodeInElement(k,1));
                xzvec = crdTransf(eleCrdTransf(index0,2),2:4);
                index1 = find(location(:,1)==connectedNodeInElement(k,2));
                index2 = find(location(:,1)==connectedNodeInElement(k,3));

                x1 = location(index1,2:end);
                x2 = location(index2,2:end);
                dgt1 = displacement(index1,2:4);
                dgr1 = displacement(index1,5:7);
                dgt2 = displacement(index2,2:4);
                dgr2 = displacement(index2,5:7);
                L = norm(x2-x1);
                xaxis = (x2-x1)/norm(x2-x1);
                yaxis = cross(xzvec,xaxis);
                zaxis = cross(xaxis,yaxis);
                transf = [xaxis;yaxis;zaxis];
%                 allForces = [-localForce(:,[1,6,5]),sectionForce,localForce(:,[7,12,11])];
                allForces = [-localForce(:,[1,6,5]),localForce(:,[7,12,11])];
                
                for m = 1:length(ksi)
                    dlt1 = transf*dgt1';
                    dlr1 = transf*dgr1';
                    dlt2 = transf*dgt2';
                    dlr2 = transf*dgr2';
                    psi = ksi(m);
  
                    N1 = 1-3*psi^2+2*psi^3;
                    N2 = psi*(1-psi)^2;
                    N3 = psi^2*(3-2*psi);
                    N4 = psi^2*(psi-1);

                    dlx = (1-psi)*dlt1(1)+psi*dlt2(1);
                    dly = N1*dlt1(2)+N2*dlr1(2)+N3*dlt2(2)+N4*dlr2(2);
                    dlz = N1*dlt1(3)+N2*dlr1(3)+N3*dlt2(3)+N4*dlr2(3);
                    dg = transf'*[dlx;dly;dlz];
                    x = (1-psi)*x1+psi*x2;

                    output = [x+factor*dg',allForces(k,3*(m-1)+1:3*m)];
                    fprintf(fidA,'%14.8f,%14.8f,%14.8f,%14.8f,%14.8f,%14.8f \n',...
                        output(1),output(2),output(3),output(4),output(5),output(6));

                end
                for m = 1:length(ksi)-1
                    counte = counte+1;
                    eleList(counte,1) = countn+m;
                    eleList(counte,2) = countn+m+1;
                end
                countn = countn+length(ksi);
            end
            for m = 1:size(eleList,1)
                fprintf(fidA,'%10d,%10d \n',eleList(m,1),eleList(m,2));
            end
        end
    end
    fclose(fidA);
    disp(['The ',num2str(i),'th part finished']);
end
fclose("all");

system("type frameVibration*.plt>frameVibration.out");
system("del frameVibration*.plt");
system("ren frameVibration.out frameVibration.plt");

disp('All finished')



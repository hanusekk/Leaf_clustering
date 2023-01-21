clear all
close all
clc

load W1_klon.mat;
load W10_klon.mat;
load W8_klon.mat;
scatter3(W1,W10,W8,'MarkerFaceColor','b');
W1s=mean(W1);
W10s=mean(W10);
W8s=mean(W8);
xlabel('Kompaktowość');
ylabel('Współczynnik Fereta');
zlabel('Współczynnik Lp2');
hold on

load W1_czeresnia.mat
load W10_czeresnia.mat
load W8_czeresnia.mat
W1s1=mean(W1);
W10s1=mean(W10);
W8s1=mean(W8);
scatter3(W1,W10,W8,'MarkerFaceColor','r');

load W1_krzew.mat
load W10_krzew.mat
load W8_krzew.mat
W1s2=mean(W1);
W10s2=mean(W10);
W8s2=mean(W8);
scatter3(W1,W10,W8,'MarkerFaceColor','y');
scatter3(W1s,W10s,W8s,'*');
scatter3(W1s1,W10s1,W8s1,'*');
scatter3(W1s2,W10s2,W8s2,'*');

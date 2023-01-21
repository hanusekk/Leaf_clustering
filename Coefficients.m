clear all
close all
%% wczytanie liści i binaryzacja
img1=imread('1krzew.png');
img2=imread('2.png');
img3=imread('3.png');
img4=imread('4.png');
img5=imread('5.png');
img6=imread('6.png');
img7=imread('7.png');
img8=imread('8.png');
img9=imread('9.png');
img10=imread('10.png');
BW1=imbinarize(img1);
BW2=imbinarize(img2);
BW3=imbinarize(img3);
BW4=imbinarize(img4);
BW5=imbinarize(img5);
BW6=imbinarize(img6);
BW7=imbinarize(img7);
BW8=imbinarize(img8);
BW9=imbinarize(img9);
BW10=imbinarize(img10);

%% zamykanie obiektu
BW1=bwareaopen(BW1,1000);
BW2=bwareaopen(BW2,1000);
BW3=bwareaopen(BW3,1000);
BW4=bwareaopen(BW4,1000);
BW5=bwareaopen(BW5,1000);
BW6=bwareaopen(BW6,1000);
BW7=bwareaopen(BW7,1000);
BW8=bwareaopen(BW8,1000);
BW9=bwareaopen(BW9,1000);
BW10=bwareaopen(BW10,1000);
%% kontur
B=boundarymask(BW1);
B2=boundarymask(BW2);
B3=boundarymask(BW3);
B4=boundarymask(BW4);
B5=boundarymask(BW5);
B6=boundarymask(BW6);
B7=boundarymask(BW7);
B8=boundarymask(BW8);
B9=boundarymask(BW9);
B10=boundarymask(BW10);
%% zamknięcie konturu
B=bwareaopen(B,1000);
B2=bwareaopen(B2,1000);
B3=bwareaopen(B3,1000);
B4=bwareaopen(B4,1000);
B5=bwareaopen(B5,1000);
B6=bwareaopen(B6,1000);
B7=bwareaopen(B7,1000);
B8=bwareaopen(B8,1000);
B9=bwareaopen(B9,1000);
B10=bwareaopen(B10,1000);
%% wyznaczanie w plot kontura
[m, n] = size(B);
x=1;
for i=1:1:m
    for j=1:1:n
        if B(i,j)==1
            L(x,1)=i;
            L(x,2)=j;
            x=x+1;
        end
    end
end
figure
hold on
z=boundary(L(:,2),L(:,1));
plot(L(z,2),L(z,1))

[m2, n2] = size(B2);
x=1;
for i=1:1:m2
    for j=1:1:n2
        if B2(i,j)==1
            L2(x,1)=i;
            L2(x,2)=j;
            x=x+1;
        end
    end
end

z2=boundary(L2(:,2),L2(:,1));
plot(L2(z2,2),L2(z2,1))
[m3, n3] = size(B3);
x=1;
for i=1:1:m3
    for j=1:1:n3
        if B3(i,j)==1
            L3(x,1)=i;
            L3(x,2)=j;
            x=x+1;
        end
    end
end

z3=boundary(L3(:,2),L3(:,1));
plot(L3(z3,2),L3(z3,1))

[m4, n4] = size(B4);
x=1;
for i=1:1:m4
    for j=1:1:n4
        if B4(i,j)==1
            L4(x,1)=i;
            L4(x,2)=j;
            x=x+1;
        end
    end
end
z4=boundary(L4(:,2),L4(:,1));
plot(L4(z4,2),L4(z4,1))

[m5, n5] = size(B5);
x=1;
for i=1:1:m5
    for j=1:1:n5
        if B5(i,j)==1
            L5(x,1)=i;
            L5(x,2)=j;
            x=x+1;
        end
    end
end
z5=boundary(L5(:,2),L5(:,1));
plot(L5(z5,2),L5(z5,1))

[m6, n6] = size(B6);
x=1;
for i=1:1:m6
    for j=1:1:n6
        if B6(i,j)==1
            L6(x,1)=i;
            L6(x,2)=j;
            x=x+1;
        end
    end
end
z6=boundary(L6(:,2),L6(:,1));
plot(L6(z6,2),L6(z6,1))

[m7, n7] = size(B7);
x=1;
for i=1:1:m7
    for j=1:1:n7
        if B7(i,j)==1
            L7(x,1)=i;
            L7(x,2)=j;
            x=x+1;
        end
    end
end
z7=boundary(L7(:,2),L7(:,1));
plot(L7(z7,2),L7(z7,1))

[m8, n8] = size(B8);
x=1;
for i=1:1:m8
    for j=1:1:n8
        if B8(i,j)==1
            L8(x,1)=i;
            L8(x,2)=j;
            x=x+1;
        end
    end
end
z8=boundary(L8(:,2),L8(:,1));
plot(L8(z8,2),L8(z8,1))

[m9, n9] = size(B9);
x=1;
for i=1:1:m9
    for j=1:1:n9
        if B9(i,j)==1
            L9(x,1)=i;
            L9(x,2)=j;
            x=x+1;
        end
    end
end
z9=boundary(L9(:,2),L9(:,1));
plot(L9(z9,2),L9(z9,1))

[m10, n10] = size(B10);
x=1;
for i=1:1:m10
    for j=1:1:n10
        if B10(i,j)==1
            L10(x,1)=i;
            L10(x,2)=j;
            x=x+1;
        end
    end
end
z10=boundary(L10(:,2),L10(:,1));
plot(L10(z10,2),L10(z10,1))
%% Pole powierzchni liścia
A1=polyarea(L(z,2),L(z,1));
A2=polyarea(L2(z2,2),L2(z2,1));
A3=polyarea(L3(z3,2),L3(z3,1));
A4=polyarea(L4(z4,2),L4(z4,1));
A5=polyarea(L5(z5,2),L5(z5,1));
A6=polyarea(L6(z6,2),L6(z6,1));
A7=polyarea(L7(z7,2),L7(z7,1));
A8=polyarea(L8(z8,2),L8(z8,1));
A9=polyarea(L9(z9,2),L9(z9,1));
A10=polyarea(L10(z10,2),L10(z10,1));
%% Długość krawędzi 
pol1=polyshape(L(z,2),L(z,1));
OB1=perimeter(pol1);
pol2=polyshape(L2(z2,2),L2(z2,1));
OB2=perimeter(pol2);
pol3=polyshape(L3(z3,2),L3(z3,1));
OB3=perimeter(pol3);
pol4=polyshape(L4(z4,2),L4(z4,1));
OB4=perimeter(pol4);
pol5=polyshape(L5(z5,2),L5(z5,1));
OB5=perimeter(pol5);
pol6=polyshape(L6(z6,2),L6(z6,1));
OB6=perimeter(pol6);
pol7=polyshape(L7(z7,2),L7(z7,1));
OB7=perimeter(pol7);
pol8=polyshape(L8(z8,2),L8(z8,1));
OB8=perimeter(pol8);
pol9=polyshape(L9(z9,2),L9(z9,1));
OB9=perimeter(pol9);
pol10=polyshape(L10(z10,2),L10(z10,1));
OB10=perimeter(pol10);

%% Współczynnik W10
Lh1=max(L(z,2))-min(L(z,2));
Lv1=max(L(z,1))-min(L(z,1));
W101=Lh1/Lv1;
Lh2=max(L2(z2,2))-min(L2(z2,2));
Lv2=max(L2(z2,1))-min(L2(z2,1));
W102=Lh2/Lv2;
Lh3=max(L3(z3,2))-min(L3(z3,2));
Lv3=max(L3(z3,1))-min(L3(z3,1));
W103=Lh3/Lv3;
Lh4=max(L4(z4,2))-min(L4(z4,2));
Lv4=max(L4(z4,1))-min(L4(z4,1));
W104=Lh4/Lv4;
Lh5=max(L5(z5,2))-min(L5(z5,2));
Lv5=max(L5(z5,1))-min(L5(z5,1));
W105=Lh5/Lv5;
Lh6=max(L6(z6,2))-min(L6(z6,2));
Lv6=max(L6(z6,1))-min(L6(z6,1));
W106=Lh6/Lv6;
Lh7=max(L7(z7,2))-min(L7(z7,2));
Lv7=max(L7(z7,1))-min(L7(z7,1));
W107=Lh7/Lv7;
Lh8=max(L8(z8,2))-min(L8(z8,2));
Lv8=max(L8(z8,1))-min(L8(z8,1));
W108=Lh8/Lv8;
Lh9=max(L9(z9,2))-min(L9(z9,2));
Lv9=max(L9(z9,1))-min(L9(z9,1));
W109=Lh9/Lv9;
Lh10=max(L10(z10,2))-min(L10(z10,2));
Lv10=max(L10(z10,1))-min(L10(z10,1));
W1010=Lh10/Lv10;

%% Współczynnik W8
W81=Lh1/OB1;
W82=Lh2/OB2;
W83=Lh3/OB3;
W84=Lh4/OB4;
W85=Lh5/OB5;
W86=Lh6/OB6;
W87=Lh7/OB7;
W88=Lh8/OB8;
W89=Lh9/OB9;
W810=Lh10/OB10;
%% Współczynnik W1
W11=(4*pi*A1)/(OB1^2);
W12=(4*pi*A2)/(OB2^2);
W13=(4*pi*A3)/(OB3^2);
W14=(4*pi*A4)/(OB4^2);
W15=(4*pi*A5)/(OB5^2);
W16=(4*pi*A6)/(OB6^2);
W17=(4*pi*A7)/(OB7^2);
W18=(4*pi*A8)/(OB8^2);
W19=(4*pi*A9)/(OB9^2);
W110=(4*pi*A10)/(OB10^2);

W8=[W81 W82 W83 W84 W85 W86 W87 W88 W89 W810];
W10=[ W101 W102 W103 W104 W105 W106 W107 W108 W109 W1010];
W1=[W11 W12 W13 W14 W15 W16 W17 W18 W19 W110];

save('W8_klon.mat','W8');
save('W10_klon.mat','W10');
save('W1_klon.mat','W1');











  




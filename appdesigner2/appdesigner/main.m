clc
clear all;
%   fx= @(x) 3*x^3-8*x^2-20*x+16;
% fp= @(x) 3/20*x^3-2/5*x^2+4/5;
 fx=  @(x) x-sin(x)-0.25;
fp= @(x) sin(x)+0.25;

a=-1;
b= 2;
ss=0.005;
 [nghiem_chiadoi,solanlap_chiadoi]=chiadoi(fx,a,b,ss)
 [nghiem_lap,solanlap_lap]=lap(fp,a,b,ss)
 [nghiem_tieptuyen,solanlap_tieptuyen] = tieptuyen(fx,a,b,ss)
 fprintf("nghiem la %.4f va so lan lap la %d\n",nghiem_chiadoi,solanlap_chiadoi)
 fprintf("nghiem la %.4f va so lan lap la %d\n",nghiem_lap,solanlap_lap)
 fprintf("nghiem la %.4f va so lan lap la %d\n",nghiem_tieptuyen,solanlap_tieptuyen)

% [nghiem_daycung ,solanlap_daycung]=daycung(fx,a,b,ss)
% x_array=[0.1 0.2 0.3 0.4];
% y_array= [0.09983  0.19867  0.29552  0.38942];
% dathuc=lagrange(x_array,y_array)
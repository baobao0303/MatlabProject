function [x,n] = lap(fp, a, b, saiso)
    syms x;
    fxi = str2func(['@(x)' char(fp(x))]);
    n=0;
    x1=a;
    x2=fxi(x1);
 while (abs(x2-x1)>saiso)
       x1=x2;
       x2=fxi(x1);
       n=n+1;
  end
 x=x1;
end

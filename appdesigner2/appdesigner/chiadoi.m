function[nghiem,solanlap]=chiadoi(f,a,b,saiso)
       solanlap=0; 
       e=abs(b-a);
       while (e > saiso)
           solanlap=solanlap+1;
            c=(a+b)/2;
           if(f(c)*f(a)<0)
               b=c;
           elseif (f(c)*f(a)>0)
               a=c;
           else
               break;
           end
              e=abs(b-a);
       end
       nghiem=c;
end


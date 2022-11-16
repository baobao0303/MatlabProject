function [nghiem, soLanLap] = tieptuyen(f, a, b, saiSo)
 syms x;
 fd1 = str2func(['@(x)' char(diff(f(x)))]);
 fd2 = str2func(['@(x)' char(diff(fd1(x)))]);
    check = 1;
     if check
        x0 = a;
        while f(x0) * fd2(x0) <= 0
     if f(x0) == 0
      nghiem = x0;
      soLanLap = 0;
    return;
       else
     x0 = (x0 + b) / 2;
   end
 end
 nghiem = x0 - f(x0) / fd1(x0);
 soLanLap = 0;
    while abs(nghiem - x0) >= saiSo
       soLanLap = soLanLap + 1;
       x0 = nghiem;
      nghiem = x0 - f(x0) / fd1(x0);
    end
  end
end

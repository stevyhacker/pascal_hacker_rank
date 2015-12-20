program sesti;
     var a,b,c,s,p:real;
     begin
       writeln ('Tri duzi: '); readln(a,b,c);
         if((a+b>c) and (b+c>a) and (a+c>b))
            then
              begin
                s:=(a+b+c)/2;
                p:=sqrt(s*(s-a)*(s-b)*(s-c));
                writeln('Povrsina trougla je:',P:8:2);
              end
            else
                writeln('Nema trougla');
            readln;
     end.
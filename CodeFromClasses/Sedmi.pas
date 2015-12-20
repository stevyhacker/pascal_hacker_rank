program sedmi;
var a,b,c,d,x1,x2,r,I:real;
begin
   write('Tri koeficijenta:');readln(a,b,c);
   if(a=0) then
             if(b=0) then
                       if(c=0) then writeln('Beskonacno mnogo resenja')
                               else writeln('Nema resenja')
                     else
                       begin
                         x1:=-c/b;
                         writeln('jedno resenje x=', x1:6:2);
                       end
           else
             begin
               d:=b*b-4*a*c;
               if(d>0) then
                         begin x1:=(-b-sqrt(d))/(2*a);
                               x2:=(-b+sqrt(d))/(2*a);
                               writeln('x1=',x1:6:2,' x2=',x2:6:2);
                         end
                       else
                         if(d=0) then writeln('Jedno resenje x= ',-b/2*a)
                                 else
                                 begin
                                    r:=-b/2*a;
                                    I:=sqrt(-d)/2*a;
                                    writeln('x1= ',r:4:2,'+i*',I:4:2);
                                    writeln('x2= ',r:4:2,'+i*',I:4:2);
                                 end;
             end;
                         readln;

 end.
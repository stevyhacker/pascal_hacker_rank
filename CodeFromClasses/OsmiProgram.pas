program osmi;
var d, m, g, p:integer;
begin
  write('dan= ');readln(d);
  write('mjesec= ');readln(m);
  write('godina= ');readln(g);
  if((g mod 4=0)and(g mod 100<>0 or (g mod 400=0))
      then p:=1 else p:=0;

     case(m) of
        1,3,5,7,8,10,12:maxdan=31;
                      2:maxdan=28+p;
               4,6,9,11:maxdan=30;

     if((0<d)and(d<=maxdan)and (0<m)and(m<13)) then
                    begin
                    if(d<maxdan) then
                        begin
                                d:=d+1;
                        end
                    else if (m<12) then
                      begin
                        d:=1;
                        m:=m+1;
                      end
                    else
                        begin
                                d:=1;
                                m:=1;
                                g:=g+1;
                    end;

                  writeln(d,'.',m,'.',g,'.');

                    end
                 else
                    writeln('Los datum');
             readln;
end.
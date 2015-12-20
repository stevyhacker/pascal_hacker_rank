program prostiBrojevi;
 var n,i,d,p:integer;
 begin
   write('n= ');readln(n);
   if(n<=2)
    then writeln('Nema prostih brojeva.');
    else
    begin
      writeln('2,');
      i:=3;
       while(i<n) do
          begin
            d:=3;p:=1;
              while(d*d<n)
                begin
                  if(i mod d=0) then p:=0;
                  d:=d+2;
                end;
             if(p=i) then write(i,',');
             i:=i+2;
          end;
     end;
       readln;
  end.

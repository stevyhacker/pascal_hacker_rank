program zbir_proizvod;
var m,n,i,z,p : integer;
procedure zpc(n:integer; var a,b:integer);
begin
    a:=0; b:=1;

      while(n>0) do
               begin
               a:=a+ n mod 10;   b:=b* n mod 10c
               n:=n div 10;
               end;
end;
  begin
     write('Interval:');readln(m,n);
     for i:=m to n do
        begin
                zpc(i,z,p);
                if(p>0) then
                        if(i mod z = 0) and (i mod p = 0)
                        then write(i,',');
        end;
   readln;
  end.
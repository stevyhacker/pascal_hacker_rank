{Sortiranje niza u rastucem poretku I nacin}
program sortiranjeNiza1;
type niz=array[1..20] of integer;
var x:niz; n:integer;


procedure unosNiza(var n:integer;var a:niz);
        var i:integer;
        begin
        write('Dimenzija niza: ');readln(n);
        for i:=1 to n do
                begin
                        write('x[',i,']=');readln(a[i]);
                end;
        end;
procedure stampaNiza(n:integer;a:niz);
var i:integer;
begin
        writeln();
        for i:=1 to n-1 do
                write(a[i],',');writeln(a[n],',');
end;


procedure razmjena(var a,b:integer);
var t:integer;
begin
        t:=a;
        a:=b;
        b:=t;
end;
procedure sredi (p,k:integer);
var  a,l,d:integer;
begin
      //  writeln(' p= ',p,' k= ',k);
        if(k>p) then
                begin
                        a:=x[p];l:=p+1;d:=k;
                        while(l<=d) do
                                begin
                                        while(x[l]<=a) and (l<=d) do l:=l+1;
                                        while(x[d]>=a) and (l<=d) do d:=d-1;
                                       if(l<d) then razmjena (x[l],x[d]);
                                end;
                       razmjena(x[p],x[d]);
                     //  stampaNiza(n,x);
                     //  readln;
                       sredi(p,d-1);
                       sredi(d+1,k);
                end;

end;

begin
        unosNiza(n,x);
        stampaNiza(n,x);
        sredi(1,n);
        stampaNiza(n,x);
        readln;
end.


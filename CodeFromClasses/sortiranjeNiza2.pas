{Sortiranje niza u rastucem poretku II nacin}
program sortiranjeNiza2;
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

procedure sastavi(p,s,k:integer);
var pom:niz; i,l,d:integer;
begin
        for i:=p to s do
        pom[i]:=x[i];
        l:=p;
        d:=s+1;
        i:=p-1;
        while (l<=s) and (d<=k) do
                begin
                        if(pom[l]<=x[d]) then
                        begin
                                i:=i+1;
                                x[i]:=pom[l];
                                l:=l+1;
                        end
                        else
                        begin
                                i:=i+1;
                                x[i]:=x[d];
                                d:=d+1;
                        end;
                end;
                if(l<=s) then
                begin
                        while(i<k) do
                        begin
                                i:=i+1;
                                x[i]:=pom[l];
                                l:=l+1;
                        end;
             //   stampaNiza(n,x);
             //   readln;
                end;
end;

procedure podijeli(p,k:integer);
var s:integer;
        begin
            //    write(' p= ',p,' k= ',k);
            //    readln;
              if(k>p) then
              begin
                s:=(p+k)div 2;
                podijeli(p,s);
                podijeli(s+1,k);
                sastavi(p,s,k);
              end;
        end;

begin
        unosNiza(n,x);
        stampaNiza(n,x);
        podijeli(1,n);
        stampaNiza(n,x);
        readln;
end.
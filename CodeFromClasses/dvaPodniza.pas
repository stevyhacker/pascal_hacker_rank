program dvaPodniza;
type
        niz=array[1..50] of integer;
var
        n,i,k,l,j,s:integer;
        x,y,z:niz;
procedure UnosNiza(var n:integer;var a:niz);
        var i:integer;
        begin
        write('Dimenzija niza: ');readln(n);
        for i:=1 to n do
                begin
                        write('x[',i,']=');readln(a[i]);
                end;
        end;
procedure StampaNiza(n:integer;a:niz);
var i:integer;
begin
        writeln();
        for i:=1 to n-1 do
                write(a[i],',');writeln(a[n],',');
end;

begin

   UnosNiza(n,x);
   StampaNiza(n,x);
    k:=0;
    l:=0;
    for i:=1 to n do
    begin
        j:=1;
        while(j<=l) do
                begin
                        if(x[i]<>z[j]) then
                        j:=j+1;
                end;
        while(j>l) do
        begin
                s:=i+1;
                while(s<=n) do
                begin
                        if(x[i]<>x[s]) then
                        s:=s+1
                        else
                        begin
                                l:=l+1;
                                z[l]:=z[i];
                        end;
                end;
                while(s>n) do
                begin
                k:=k+1;
                y[k]:=x[i];
                end;
        end;
    end;
   StampaNiza(k,y);
   StampaNiza(l,z);
   readln();
end.

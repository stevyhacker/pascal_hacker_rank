program nizProstih;
type
        niz=array[1..50] of integer;
var
        n,i,k,l:integer;
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
function prost(n:integer):boolean;
var d:integer; rez:boolean;
        begin
                rez:=(n=2) or ((n mod 2 = 1) and (n>1));
                d:=3;
                while(d*d<=n) and (rez) do
                begin
                        rez:=(n mod d<>0);
                        d:=d+2;
                end;
            prost:=rez;
        end;
begin
   UnosNiza(n,x);
   StampaNiza(n,x);
   k:=0; l:=0;
   for i:=1 to n do
        begin
                if(prost(x[i])) then
                begin
                        k:=k+1;y[k]:=x[i];
                end
                else
                        begin
                                l:=l+1; z[l]:=x[i];
                        end;
         end;

   StampaNiza(k,y);
   StampaNiza(l,z);
   readln();
end.

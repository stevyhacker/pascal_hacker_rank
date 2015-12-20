program simetricniPodniz;
type
        niz=array[1..50] of integer;
var
        n,k,l,i,d,p1,k1:integer; kraj:boolean;
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
                write(a[i],',');writeln(a[n],'.');
end;

function simetrican(n:integer;a:niz;d,p:integer):boolean;
{Ispituje da li je podniz duzine d od indeksa p simetrican}
var i,j:integer; rez:boolean;
begin
        i:=p;j:=i+d-1; rez:=(a[i]=a[j]);
        while (rez) and (i<j) do
                begin
                        i:=i+1;j:=j-1;rez:=(a[i]=a[j]);
                end;
                simetrican:=rez;
end;

begin
        UnosNiza(n,x); StampaNiza(n,x); d:=n; kraj:=false;
        repeat
        i:=1;
        while(i+d-1<=n) and (not kraj) do
                begin
                       // writeln(d:6,i:6);readln();
                        if(simetrican(n,x,d,i)) then
                        begin
                                kraj:=true;p1:=i;k1:=i+d-1;
                        end;
                     i:=i+1;
                end;
           d:=d-1;

        until(kraj) or (d=1);
        if(d=1) then write('Nema')
        else
                write(p1:6,k1:6);
        readln();
end.
program razbijanjeBroja;
type
niz=array[1..20] of integer;
var n,k,l,s,i,ost,br:integer; x:niz;
procedure stampaNiza(n:integer;x:niz);
var i:integer;
        begin
                writeln;
                for i:=1 to n-1 do
                write(x[i],'+');
                writeln(x[n]);
        end;
begin
        write('Broj za razbijanje: ');readln(n); br:=1;
        k:=1;
        x[k]:=n;
        stampaNiza(k,x);
        while(x[1]>1) do
        begin
                br:=br+1;
                l:=k;
                while(x[l]=1) do
                l:=l-1;
                x[l]:=x[l]-1;
                s:=0;
                for i:=1 to l do
                s:=s+x[i];
                ost:=n-s;
                while (ost>=x[l]) do
                        begin
                                l:=l+1;
                                x[l]:=x[l-1];
                                ost:=ost-x[l];
                        end;
                if(ost>0) then
                begin
                        l:=l+1;
                        x[l]:=ost;
                end;
                k:=l;
                stampaNiza(k,x);
                readln;
        end;
    writeln(br);
    readln;
end.
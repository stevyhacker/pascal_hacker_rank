program Hanoj;
var n;
procedure hanoj(n,a,b,c:integer);
begin
        if(n>0) then
                begin hanoj(n-1,c,b);
                write('(',a,'->',c,') ');
                hanoj(n-1,b,a,c);
                end;

end;



begin

        write('Broj diskova: ');readln(n);
        hanoj(n,1,2,3);
        readln();
end.
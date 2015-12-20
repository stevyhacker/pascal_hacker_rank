program sahovskaTastatura;
var n,brojac,i:integer;
procedure tel(n:longint;m,d,c:integer);
{n- broj koji je formira,m- zadata duzina broja,
d- duzina formiranog broja, c- cifra koja se dodaje }
begin
        n:=n*10+c;
        if(d=m) then  begin brojac:=brojac+1;write(n:8);
                      end
                else
                      begin
                        case(c) of
                        0:begin tel (n,m,d+1,4); tel (n,m,d+1,6); end;
                        1:begin tel (n,m,d+1,6); tel (n,m,d+1,8); end;
                        2:begin tel (n,m,d+1,7); tel (n,m,d+1,9); end;
                        3:begin tel (n,m,d+1,4); tel (n,m,d+1,8); end;
                        4:begin tel (n,m,d+1,0); tel (n,m,d+1,3);tel(n,m,d+1,9); end;
                        6:begin tel (n,m,d+1,0); tel (n,m,d+1,1);tel(n,m,d+1,7); end;
                        7:begin tel (n,m,d+1,2); tel (n,m,d+1,6); end;
                        8:begin tel (n,m,d+1,1); tel (n,m,d+1,3); end;
                        9:begin tel (n,m,d+1,2); tel (n,m,d+1,4); end;
                      end;
                end;


end;


begin
        write('Broj cifara: ');readln(n); brojac:=0;
        for i:=1 to 9 do
                begin
                        if(i<>5) then tel(0,n,1,i);
                        writeln();readln();
                end;
        writeln('Ima ih:',brojac);
        readln();
end.

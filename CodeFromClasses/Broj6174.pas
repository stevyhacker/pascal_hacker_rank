program broj6174;
var i,rez,mbk,b:integer;
procedure razmjena (var a,b:integer);
var t:integer;
begin
        t:=a;a:=b;b:=t;
end;
procedure cifre(n:integer;var a,b,c,d:integer);
begin
        a:=n mod 10; b:=(n div 10)mod 10; c:=(n div 100)mod 10; d:=n div 1000;
end;
procedure rastuce(var a,b,c,d:integer);
begin
        if(a>b) then razmjena(a,b);
        if(a>c) then razmjena(a,c);
        if(a>d) then razmjena(a,d);
        if(b>c) then razmjena(b,c);
        if(b>d) then razmjena(b,d);
        if(c>d) then razmjena(c,d);
end;

function bk(n:integer):integer;
var a,b,c,d,n1:integer;
begin
        writeln(n);readln; cifre(n,a,b,c,d);rastuce(a,b,c,d);n1:=(1000*d+100*c+10*b+a)-(1000*a+100*b+10*c+d);
        if(n1<>n) then begin bk:=1+bk(n1);
                       end
                  else bk:=0;

end;



begin
        mbk:=0;rez:=0;
        for i:=9195 to 9195 do
        begin
        if(i mod 1111<>0)
                then
                        begin
                                  b:=bk(i);
                                if(b>=mbk) then
                                        begin
                                                mbk:=b;
                                                rez:=i;
                                        end;
                        end;

        end;
        write(rez:6,mbk:6);
        readln;
end.
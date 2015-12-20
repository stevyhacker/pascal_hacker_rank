program prost;
var m,n,i,p,d,rr,prvi,drugi,j,r:integer;
function prost(n:integer):boolean;
var d:integer;p:boolean;
begin
        p:=(n=2) or ((n mod 2 = 1) and (n>1));
        d:=3;
        while (d*d<=n and p do
                begin
                p:=
                .
                .
                .
                .
                .
                .
begin
        write('Interval(m,n)');readln(m,n);
        i=m; prvi:=m-1;rr:=0;
        repeat
                if prost(i) then prvi:=i;
                i:=i+1;
        until(i>n) or (prvi>m-1);
        if(i>n) then begin writeln('Nema nijedan prosti broj'); end
                else
                        begin
                                j:=i+1;
                                        repeat
                                                if prost(j) then begin
                                                                drugi:=j;
                                                                r:=drugi-prvi;
                                                                if(r>=rr) then begin
                                                                        p:=prvi;
                                                                        d:=drugi;
                                                                        rr:=r;
                                                                                end;
                                                                prvi:=drugi;
                                                                end;
                                 j:=j+1;
                           until(j>n);
                if(rr>0) then begin writeln(p,' ',d,' ',rr);end
                        else begin writeln('Samo jedan...');end;
                end;
        readln;
end.
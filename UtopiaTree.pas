program utopiantree;

var t,n,i,j:int64;
    tests: array of integer;
    spring:boolean;

begin
    readln(t);
    setlength(tests,t-1);
    for i:=0 to t-1 do
    begin
        j:=0;
        n:=1;
        spring:=true;
        readln(tests[i]);
        while j<tests[i] do
              begin
                  j:=j+1;
                  if spring=true then
                      begin
                      n:= n * 2;
                      spring:=false;
                      end
                  else
                      begin
                      n:=n+1;
                      spring:=true;
                      end;
              end;
              writeln(n);
    end;
end.

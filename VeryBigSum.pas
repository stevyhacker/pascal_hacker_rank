program bigsum;

var
    i,n:integer;
    sum:int64;
    numbers: array of int64;
begin
    sum:=0;
    readln(n);
    setlength(numbers,n);

    for i:=0 to n do
    begin
       read(numbers[i]);
       sum:=sum + numbers[i];
    end;

    writeln(sum);

end.

program reverseintegerarray;
var 
    inputarray:array of integer;
    reversedarray:array of integer;
    n,j,i,k:integer;
begin
    readln(n);
    n:=n-1;
    setlength(inputarray,n);
    setlength(reversedarray,n);
    
    for i:= 0 to n do
        begin
            read(inputarray[i]);
        end;
        
    for j:= 0 to n do
        begin
            k:=inputarray[n-j];
            reversedarray[j]:=k;
        end;
    
    for i:= 0 to n do
        begin
            write(reversedarray[i], ' ');
        end;
end.

(* Enter your code here. Read input from STDIN. Print output to STDOUT *)
PROGRAM DVA;
VAR
I,N:INTEGER;
SUM:Int64;
NUMBERS:ARRAY[0..10000] OF INTEGER;

BEGIN

SUM:=0;

READLN(N);

FOR I:=1 TO N DO
BEGIN
READ(NUMBERS[I]);
END;

FOR I:=1 TO N DO
BEGIN
SUM:=SUM+NUMBERS[I];
END;


WRITELN(SUM);

END.

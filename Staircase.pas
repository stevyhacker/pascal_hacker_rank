(* Enter your code here. Read input from STDIN. Print output to STDOUT *)
PROGRAM TEST;
VAR N,I,C:INTEGER;
BEGIN
(*WRITELN('Enter staircase height= ');*)
READLN(N);
C:=1;
WHILE C <= N DO
BEGIN

FOR I:=1 TO N-C DO
BEGIN
WRITE(' ');
END;

FOR I:=1 TO C DO
BEGIN
WRITE('#');
END;

WRITELN();
C:=C+1;
END;

END.

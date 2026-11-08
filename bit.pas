program logis;
uses crt;

var
a,b: integer;

begin
    clrscr;
    a := 5;
    b := 2;

    writeln('a AND b:', a and b);
    writeln('a OR b:', a OR b);
    writeln('a xor b:', a xor b);
    writeln('Not a:', not a);
    writeln('a shl b:', a shl b);
    writeln('a shr b:', a shr b);
end.

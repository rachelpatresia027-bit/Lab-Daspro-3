program logis;
uses crt;

var
x,y: boolean;

begin
    clrscr;
    x := true;
    y := false;

    writeln('x AND y:', x and y);
    writeln('x OR y:', x OR y);
    writeln('Not x:', not x);
    writeln('x xor y:', x xor y);

end.
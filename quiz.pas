program FaktorialRekursif;
uses crt;

// Menggunakan FUNCTION karena mengembalikan nilai integer/longint
function faktorial(n: integer): longint;
begin
    if (n = 0) or (n = 1) then
        faktorial := 1
    else
        faktorial := n * faktorial(n - 1); // Memanggil dirinya sendiri
end;

var
    nilai: integer;

begin
    clrscr;
    write('Input Nilai : ');
    readln(nilai);
    
    // Memanggil fungsi faktorial langsung di dalam fungsi writeln
    writeln('Output Hasil : ', faktorial(nilai));
    readln;
end.
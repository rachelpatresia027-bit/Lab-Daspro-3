program pointer1;
uses crt;

var
  angka : integer;
  pAngka : ^integer;

begin
  angka := 10;
  
  pAngka := @angka;
  
  writeln ('Nilai Angkanya : ', angka);
  writeln('Nilai pointernya : ', pAngka);
  
end.
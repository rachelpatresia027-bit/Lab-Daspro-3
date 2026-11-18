program KuisPointer2;
uses crt;

var
  angka: integer;    { Variabel biasa }
  p1, p2: ^integer;  { Dua variabel pointer yang berbeda }

begin
  clrscr;
  
  { Mengisi nilai awal variabel }
  angka := 100;
  
  { Mengatur kedua pointer agar menunjuk ke alamat variabel 'angka' }
  p1 := @angka;
  p2 := @angka;
  
  writeln('');
  
  { a. Menampilkan nilai variabel }
  writeln('a. Nilai variabel (angka)          : ', angka);
  
  { b. Menampilkan alamat memori variabel }
  writeln('b. Alamat variabel (angka)         : ', hexStr(PtrUInt(@angka), 8));
  
  { c. Menampilkan nilai yang ditunjuk oleh kedua pointer }
  writeln('c. Nilai yang ditunjuk oleh Pointer 1: ', p1^);
  writeln('   Nilai yang ditunjuk oleh Pointer 2: ', p2^);
  
  readln;
end.
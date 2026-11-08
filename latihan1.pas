program PilihMenuMakanan;
uses crt;

var
  kodeMenu: integer;

begin
  clrscr;
  
  { Menampilkan Daftar Menu Makanan }
  writeln('');
  writeln('        DAFTAR MENU MAKANAN        ');
  writeln('');
  writeln('1. Nasi Goreng Spesial  - Rp 15.000');
  writeln('2. Ayam Bakar Prambanan - Rp 20.000');
  writeln('3. Mie Goreng Seafood   - Rp 18.000');
  writeln('4. Sate Ayam Madura     - Rp 22.000');
  writeln('5. Bakso Sapi Urat      - Rp 14.000');
  writeln('');
  
  { Input Pengguna }
  write('Masukkan kode menu yang ingin dipilih (1-5): ');
  readln(kodeMenu);
  writeln('');
  
  { Percabangan untuk menentukan Output }
  case kodeMenu of
    1: begin
         writeln('Nama Menu: Nasi Goreng Spesial');
         writeln('Harga     : Rp 15.000');
       end;
    2: begin
         writeln('Nama Menu: Ayam Bakar Prambanan');
         writeln('Harga     : Rp 20.000');
       end;
    3: begin
         writeln('Nama Menu: Mie Goreng Seafood');
         writeln('Harga     : Rp 18.000');
       end;
    4: begin
         writeln('Nama Menu: Sate Ayam Madura');
         writeln('Harga     : Rp 22.000');
       end;
    5: begin
         writeln('Nama Menu: Bakso Sapi Urat');
         writeln('Harga     : Rp 14.000');
       end;
  else
    { Output jika kode tidak tersedia }
    writeln('Kode menu tidak tersedia.');
  end;
  
  writeln('');
  readln;
end.
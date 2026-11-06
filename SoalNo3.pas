Program PembelianTiketBioskop;

var
JenisFilm, Hari, JumlahTiket: integer;
HargaAwal, HargaPerTiket, Diskon, TotalBayar: real;

begin
writeln('Program Pembelian Tiket');
writeln('Jenis Film: ');
writeln('1.Reguler: Rp. 30.000 ');
writeln('2. 3D: Rp. 45.000 ');
writeln('3. IMAX: Rp. 60.000 ');
write('Pilih Jenis Film (1/2/3): '); 
readln(JenisFilm);

case JenisFilm of
1: HargaPerTiket := 30000;
2: HargaPerTiket := 45000;
3: HargaPerTiket := 60000;
else
begin
writeln('Jenis film tidak valid. Program dihentikan.');
exit;
end;
end;

writeln;
writeln('Hari: ');
writeln('1. Senin-Kamis: ');
writeln('2. Jumat: ');
writeln('3. Sabtu-Minggu: ');
write('Pilih Hari (1/2/3): ');
readln(Hari);

write('Masukkan Jumlah Tiket: ');
readln(JumlahTiket);

HargaAwal := HargaPerTiket*JumlahTiket;

{Tambahan harga berdasarkan hari}
if hari = 2 then
HargaAwal := HargaAwal+(5000*JumlahTiket)
else if hari = 3 then
HargaAwal := HargaAwal+(10000*JumlahTiket);

{Menentukan diskon}
if HargaAwal >= 200000 then
diskon:= HargaAwal*0.1
else if HargaAwal >= 100000 then
diskon:= HargaAwal*0.05
else
diskon := 0;

TotalBayar := HargaAwal-Diskon;

writeln;
writeln('Hasil Pembayaran');
writeln('Harga Awal : Rp', HargaAwal:0:0);
writeln('Diskon: Rp', Diskon:0:0);
writeln('Total yang Harus Dibayar: Rp', TotalBayar:0:0);


end.

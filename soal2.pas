program NilaiAkhirMahasiswa;

var
nama: string;
nilaiTugas, nilaiUTS, nilaiUAS: real;
tugas, uts, uas, nilaiAkhir: real;

begin
writeln('=== MENGHITUNG NILAI AKHIR MAHASISWA ===');
write('Masukkan nama mahasiswa: ');
readln(nama);
write('Masukkan nilai tugas: ');
readln(nilaiTugas);
write('Masukkan nilai UTS: ');
readln(nilaiUTS);
write('Masukkan nilai UAS: ');
readln(nilaiUAS);

tugas := nilaiTugas * 30 / 100;
uts := nilaiUTS * 30 / 100;
uas := nilaiUAS * 40 / 100;
nilaiAkhir := tugas + uts + uas;

writeln;
writeln('Nama Mahasiswa: ', nama);
writeln('Nilai Akhir: ', nilaiAkhir:0:2);

end.
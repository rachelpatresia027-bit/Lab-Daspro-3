program PenentuanBeasiswa;

var
IPK: real;
PenghasilanOrangTua: longint; 
JumlahPrestasi, kategori: integer;

begin
    write('IPK Mahasiswa: ');
    readln(IPK);
    write('Penghasilan OrangTua: ');
    readln(PenghasilanOrangTua);
    write('Jumlah Prestasi; ');
    readln(JumlahPrestasi);


    {Penentuan Kategori Berdasarkan Ketentuan}
    if (IPK<2.75) then
    kategori := 4
    else if (IPK>=3.75) and (PenghasilanOrangTua <= 5000000) and (JumlahPrestasi>= 2) then
    kategori := 1
    else if (IPK>=3.50) and (PenghasilanOrangTua <= 7000000) and (JumlahPrestasi>= 1) then
    kategori := 2
    else if (IPK<3.50) and (PenghasilanOrangTua > 7000000) then
    kategori := 5
    else
    begin
        kategori := 3
    end;

    write('Hasil: ');
    case kategori of
    1: writeln('Mendapatkan Beasiswa Penuh');
    2: writeln('Mendapatkan Beasiswa Sebagian');
    3: writeln('Tidak Mendapatkan Beasiswa');
    4: writeln('IPK Tidak Memenuhi Syarat');
    5: writeln('Penghasilan Tidak Memenuhi Syarat');
end;
readln;
end.



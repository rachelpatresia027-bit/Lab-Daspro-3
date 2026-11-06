Program SistemPemesananMakanan;

var
KodeMakanan, JumlahPesanan, StatusPelanggan: integer;
HargaMakanan, TotalHarga, diskon, TotalBayar: real;

begin
    writeln('Program Sistem Pemesanan Makanan');

    writeln('Kode Makanan');
    writeln('1. Nasi Goreng (Rp.20.000)');
    writeln('2. Mie Goreng (Rp. 18.000)');
    writeln('3. Ayam Geprek (Rp. 25.000)');
    writeln('4. Steak (Rp. 50.000)');
    write('Kode Makanan: ');
    readln(KodeMakanan);

    {Menentukan Harga Makanan}
    case KodeMakanan of
    1: HargaMakanan := 20000;
    2: HargaMakanan := 18000;
    3: HargaMakanan := 25000;
    4: HargaMakanan := 50000;
    else
    begin
        writeln('Kode makanan tidak valid.');
        exit;
        end;
    end;

    write('Jumlah Pesanan: ');
    readln(JumlahPesanan);

    {Validasi Jumlah Pesanan}
    if JumlahPesanan <= 0 then
    begin
        writeln('Jumlah pesanan tidak valid.');
        exit;
    end;

    if JumlahPesanan >10 then
    begin
        writeln('Jumlah pesanan terlalu banyak.');
        exit;
    end;

    write('Status Pelanggan: ');
    writeln;
    writeln('1. Member');
    writeln('2. Non-Member');
    write('Pilih Status: ');
    readln(StatusPelanggan);

    TotalHarga := HargaMakanan*JumlahPesanan;

    {Menentukan Diskon}
    diskon := 0;

    if StatusPelanggan = 1 then
    begin
    if TotalHarga >= 100000 then
    diskon := TotalHarga*0.15

    else if TotalHarga >= 50000 then
    diskon := TotalHarga*0.1

    else 
    if TotalHarga < 50000 then
    diskon := TotalHarga*0.05
    end
    
    else if StatusPelanggan = 2 then
    begin 
    if TotalHarga >= 100000 then
    diskon := TotalHarga*0.5

    else
    diskon := 0;
    end

    else
    begin
        writeln('Status pelanggan tidak valid.');
        exit;
    end;

    TotalBayar := TotalHarga-Diskon;

    writeln;
    writeln('Hasil Pembayaran');
    writeln('Harga makanan: Rp', HargaMakanan:0:0);
    writeln('Total harga: Rp', TotalHarga:0:0);
    writeln('Diskon: Rp', Diskon:0:0);
    writeln('Total yang harus dibayar: Rp', TotalBayar:0:0);

end.
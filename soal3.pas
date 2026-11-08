program LuasPersegiPanjang;

var 
panjang, lebar, luas: integer; 

begin
    write('masukkan panjang: ');
    readln(panjang);
    write('masukkan lebar: ');
    readln(lebar);

    luas := panjang * lebar;
    writeln('Luas persegi panjang: ', luas);
end.
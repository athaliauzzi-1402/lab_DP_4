program DeretBilangan;

var
  n, i : longint;

{ a. Deret Fibonacci: 1,1,2,3,5,8,13,...
  Metode pengerjaan:
  Menggunakan dua bilangan awal, yaitu 1 dan 1.
  Bilangan berikutnya diperoleh dari penjumlahan
  dua bilangan sebelumnya.
  Proses perhitungan menggunakan perulangan FOR. }

function Fibonacci(k : longint) : longint;
var
  a, b, c, j : longint;
begin
  a := 1;
  b := 1;

  // Dua bilangan pertama pada deret Fibonacci adalah 1 
  if k <= 2 then
    Fibonacci := 1
  else
  begin
    // Menghitung bilangan berikutnya dengan menjumlahkan
     // dua bilangan sebelumnya 
    for j := 3 to k do
    begin
      c := a + b;
      a := b;
      b := c;
    end;

    // Mengembalikan hasil perhitungan 
    Fibonacci := b;
  end;
end;


{ b. Deret Pangkat 2: 1,2,4,8,16,32,...
  Metode pengerjaan:
  Dimulai dari nilai 1, kemudian setiap perhitungan
  dikalikan dengan 2 menggunakan perulangan FOR. }

function Pangkat2(k : longint) : longint;
var
  j, hasil : longint;
begin
  hasil := 1;

  // Mengalikan nilai sebelumnya dengan 2 secara berulang 
  for j := 2 to k do
    hasil := hasil * 2;

  // Mengembalikan hasil perhitungan 
  Pangkat2 := hasil;
end;


{ c. Deret Kuadrat: 1,4,9,16,25,...
  Metode pengerjaan:
  Menggunakan rumus bilangan dikalikan dengan dirinya sendiri.
  Rumus yang digunakan adalah k * k. }

function Kuadrat(k : longint) : longint;
begin
  Kuadrat := k * k;
end;


{ d. Deret Perkalian Berurutan: 2,6,12,20,30,...
  Metode pengerjaan:
  Setiap bilangan dikalikan dengan bilangan setelahnya.
  Rumus yang digunakan adalah k * (k + 1). }

function KaliBerurutan(k : longint) : longint;
begin
  KaliBerurutan := k * (k + 1);
end;


begin
  // Meminta pengguna memasukkan jumlah bilangan 
  write('Input : ');
  readln(n);

  writeln('Output :');

  // Menampilkan deret Fibonacci dari bilangan pertama
   // sampai jumlah bilangan yang dimasukkan pengguna 
  for i := 1 to n do
  begin
    write(Fibonacci(i));

    // Memberikan tanda koma di antara bilangan 
    if i < n then write(', ');
  end;
  writeln;


  // Menampilkan deret Pangkat 2 
  for i := 1 to n do
  begin
    write(Pangkat2(i));
    if i < n then write(', ');
  end;
  writeln;


  // Menampilkan deret Kuadrat 
  for i := 1 to n do
  begin
    write(Kuadrat(i));
    if i < n then write(', ');
  end;
  writeln;


  // Menampilkan deret Perkalian Berurutan 
  for i := 1 to n do
  begin
    write(KaliBerurutan(i));
    if i < n then write(', ');
  end;
  writeln;

end.
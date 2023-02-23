void main() {
  //Persegi
  int sisi, kelilingPersegi, luasPersegi;
  sisi = 6;
  kelilingPersegi = 4 * sisi;
  luasPersegi = sisi * sisi;
  print("Rumus Keliling Persegi = 4xsisi");
  print("Rumus luas persegi = sisixsisi");
  print("sisi = $sisi");
  print("Keliling persegi = $kelilingPersegi");
  print("Luas persegi = $luasPersegi");
  print("=====================================");
  //Persegi Panjang
  int panjang, lebar, kelilingPersegiPanjang, luasPersegiPanjang;
  panjang = 8;
  lebar = 4;
  kelilingPersegiPanjang = 2 * (panjang + lebar);
  luasPersegiPanjang = panjang * lebar;

  print("Rumus keliling persegi panjang = 2(p+l)");
  print("Rumus luas persegi panjang = pxl");
  print("Panjang = $panjang \nLebar=$lebar");
  print("Keliling persegi panjang = $kelilingPersegiPanjang");
  print("Luas persegi panjang dengan panjang = $luasPersegiPanjang");

  //Lingkaran
  double jariJari = 7.0;
  double phi = 3.14;
  double kelilingLingkaran = 2 * phi * jariJari;
  double luasLingkaran = phi * jariJari * jariJari;
  print("Lingkaran");
  print("Rumus keliling Lingkaran = 2 x phi x jari-jari");
  print("Rumus luas lingkaran = phi x jari-jari x jari-jari");
  print("Jari-jari lingkaran = $jariJari");
  print("Keliling Lingkaran = $kelilingLingkaran");
  print("Luas lingkaran = $luasLingkaran");
}

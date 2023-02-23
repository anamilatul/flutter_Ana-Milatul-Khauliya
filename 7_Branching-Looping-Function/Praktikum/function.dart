void main() {
  luasLingkaran(7.0);
  luasLingkaran(14.6);
}

void luasLingkaran(double jariJari) {
  double phi, luas;
  phi = 3.14;
  luas = phi * jariJari * jariJari;
  print("Luas lingkaran dengan $jariJari adalah $luas");
}

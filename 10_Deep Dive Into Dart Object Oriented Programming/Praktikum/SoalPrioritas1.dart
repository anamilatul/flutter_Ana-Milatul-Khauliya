class BangunRuang {
  double? panjang, lebar, tinggi;
  BangunRuang({
    this.panjang,
    this.lebar,
    this.tinggi,
  });

  double volume() {
    return 0;
  }
}

class Kubus extends BangunRuang {
  double? sisi;
  Kubus({
    this.sisi,
  });
  @override
  double volume() {
    return sisi! * sisi! * sisi!;
  }
}

class Balok extends BangunRuang {
  @override
  double volume() {
    return panjang! * lebar! * tinggi!;
  }
}

void main() {
  Kubus kubus = Kubus(sisi: 5.5);
  print('Volume kubus dengan sisi ${kubus.sisi} = ${kubus.volume()}');

  Balok balok = Balok();
  print(
      'Volume balok dengan panjang ${balok.panjang = 10.5}, lebar ${balok.lebar = 6.5}, dan tinggi ${balok.tinggi = 8} = ${balok.volume()} \n');

  BangunRuang bangun = BangunRuang();
  print(bangun.volume());
}

//SoalPrioritas1.1
class Hewan {
  double berat;
  Hewan({
    required this.berat,
  });
}

//SoalPrioritas1.2
class Mobil {
  double kapasitas;
  List<Hewan> muatan = [];
  Mobil({
    required this.kapasitas,
  });

  void tambahMuatan(Hewan hewan) {
    if (kapasitas >= hewan.berat) {
      muatan.add(hewan);
      kapasitas -= hewan.berat;
      print(
          'Hewan dengan berat ${hewan.berat} kg berhasil ditambahkan pada muatan mobil');
    } else {
      print(
          'Mohon maaf, hewan tidak berhasil ditambahkan! Muatan mobil sudah penuh');
    }
  }
}

void main() {
  Mobil mobilku = Mobil(kapasitas: 240.5);
  mobilku.tambahMuatan(Hewan(berat: 100.5));
  mobilku.tambahMuatan(Hewan(berat: 90));
  mobilku.tambahMuatan(Hewan(berat: 50));
  mobilku.tambahMuatan(Hewan(berat: 60));
}

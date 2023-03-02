class DataBuku {
  int ID;
  String judul;
  String penerbit;
  int harga;
  String kategori;
  DataBuku({
    required this.ID,
    required this.judul,
    required this.penerbit,
    required this.harga,
    required this.kategori,
  });
}

class KelolaBuku {
  List<DataBuku> daftarBuku = [];
  void addBuku(DataBuku dataBuku) {
    daftarBuku.add(dataBuku);
  }

  void deleteBuku(int ID) {
    daftarBuku.removeWhere((dataBuku) => dataBuku.ID == ID);
  }

  void getAllBook() {
    if (daftarBuku.isEmpty) {
      print("Belum ada data buku ");
    } else {
      for (var i = 0; i < daftarBuku.length; i++) {
        print(
            'ID : ${daftarBuku[i].ID}, Judul : ${daftarBuku[i].judul}, Penerbit : ${daftarBuku[i].penerbit}, Harga : Rp. ${daftarBuku[i].harga}, Kategori : ${daftarBuku[i].kategori}');
      }
    }
  }
}

void main() {
  KelolaBuku kelolaBuku = KelolaBuku();
  DataBuku dataBuku1 = DataBuku(
      ID: 111,
      judul: 'Laskar Pelangi',
      penerbit: 'Bentang Pustaka',
      harga: 85000,
      kategori: 'Fiksi');
  DataBuku dataBuku2 = DataBuku(
      ID: 222,
      judul: 'London',
      penerbit: 'PT Gramedia',
      harga: 90000,
      kategori: 'Fiksi');
  kelolaBuku.addBuku(dataBuku1);
  kelolaBuku.addBuku(dataBuku2);
  print("Daftar Buku yang sudah ditambahkan : ");
  kelolaBuku.getAllBook();
  print("\n");
  kelolaBuku.deleteBuku(111);
  print("Daftar Buku sesudah ada ID yang dihapus : ");
  kelolaBuku.getAllBook();
}

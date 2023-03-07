import 'dart:io';

class Matematika {
  void hasil() {}
}

class KelipatanPersekutuanTerkecil implements Matematika {
  int x, y;
  KelipatanPersekutuanTerkecil(
    this.x,
    this.y,
  );

  @override
  void hasil() {
    for (int i = x;; i++) {
      if (i % x == 0 && i % y == 0) {
        print('\nKPK dari $x dan $y = $i ');
        break;
      }
    }
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  int x, y;
  FaktorPersekutuanTerbesar(
    this.x,
    this.y,
  );
  @override
  void hasil() {
    for (int i = x; i > 0; i--) {
      if (x % i == 0 && y % i == 0) {
        print('FPB dari $x dan $y = $i ');
        break;
      }
    }
  }
}

void main() {
  stdout.write('Nilai x : ');
  int x = int.parse(stdin.readLineSync()!);
  stdout.write('Nilai y : ');
  int y = int.parse(stdin.readLineSync()!);
  KelipatanPersekutuanTerkecil kpk = KelipatanPersekutuanTerkecil(x, y);
  kpk.hasil();
  FaktorPersekutuanTerbesar fpb = FaktorPersekutuanTerbesar(x, y);
  fpb.hasil();
}

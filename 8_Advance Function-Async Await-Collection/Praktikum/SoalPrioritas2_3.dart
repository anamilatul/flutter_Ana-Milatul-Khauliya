import 'dart:io';

Future<void> faktorial(int bilBulat) async {
  int fakt = 1;
  await Future.delayed(Duration(seconds: 1), () {
    if (bilBulat < 0) {
      print("$bilBulat bukan bilangan bulat");
    } else {
      for (int i = 1; i <= bilBulat; i++) {
        fakt *= i;
        fakt.toString();
      }
      print("Hasil faktorial dari $bilBulat adalah $fakt ");
    }
  });
}

void main() {
  print("Masukkan bilangannya : ");
  int bil = int.parse(stdin.readLineSync()!);
  faktorial(bil);
}

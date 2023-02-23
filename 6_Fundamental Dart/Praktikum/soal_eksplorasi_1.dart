import 'dart:io';

void main() {
  print("Masukkan bilangan  : ");
  int bilangan = int.parse(stdin.readLineSync()!);
  print("Berikut ini faktor dari bilangan $bilangan : ");
  for (int i = 1; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      print(i);
    }
  }
}

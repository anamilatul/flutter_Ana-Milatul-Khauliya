import 'dart:io';

//Soal Eksplorasi 1
void main() {
  stdout.write("Masukkan bilangan yang ingin dicek : ");
  int bil = int.parse(stdin.readLineSync()!);
  bool prima = true;
  for (int a = 2; a < bil; a++) {
    if (bil % a == 0) {
      prima = false;
      break;
    }
  }
  if (prima) {
    print("$bil adalah bilangan prima");
  } else {
    print("$bil bukan bilangan prima");
  }
}

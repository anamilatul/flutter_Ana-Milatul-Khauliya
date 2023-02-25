import 'dart:io';

void main() {
  stdout.write("Masukkan bilangannya : ");
  int bil = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= bil; i++) {
    for (int j = 1; j <= bil; j++) {
      stdout.write("${i * j} ");
    }
    stdout.write("\n");
  }
}

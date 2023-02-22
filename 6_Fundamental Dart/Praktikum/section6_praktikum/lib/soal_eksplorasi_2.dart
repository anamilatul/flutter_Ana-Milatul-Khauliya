import 'dart:io';

void main() {
  print("Program untuk check kata Palindrom");
  print("Masukkan kata yang ingin dicek : ");
  String kata = stdin.readLineSync()!;
  bool isPalindrom = true;
  for (int i = 0; i < kata.length; i++) {
    if (kata[i] != kata[kata.length - (i + 1)]) {
      isPalindrom = false;
      break;
    }
  }
  if (isPalindrom) {
    print("$kata adalah Palindrom");
  } else {
    print("$kata bukan Palindrom");
  }
}

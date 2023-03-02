import 'dart:io';

void main() {
  List<String> word = [];
  for (int i = 0; i < 9; i++) {
    print('Masukkan kata ke-${i + 1} : ');
    String kataku = stdin.readLineSync()!;
    word.add(kataku);
  }
  print(word.toList());
  Map<String, int> frequency = {};

  for (String kata in word) {
    frequency[kata] = (frequency[kata] ?? 0) + 1;
  }
  print(frequency);
}

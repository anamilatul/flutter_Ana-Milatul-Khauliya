import 'dart:io';

void main() {
  List<int> myList = [];
  print('Masukkan jumlah nilai yang ingin diiputkan : ');
  int nil = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < nil; i++) {
    print('Masukkan angka ke-${i + 1} : ');
    int nilai = int.parse(stdin.readLineSync()!);
    myList.add(nilai);
  }
  print(myList.toList());
  double total = 0;
  for (int i = 0; i < myList.length; i++) {
    total += myList[i];
  }
  double rataRata = total / myList.length;
  int bulat = rataRata.round();
  print('Rata-ratanya yaitu : $bulat');
}

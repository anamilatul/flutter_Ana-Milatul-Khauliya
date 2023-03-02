//SoalEksplorasi 1
void main() {
  List<String> data1 = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS',
  ];
  print('Contoh 1 \nData awal : $data1');
  List<String> dataUnik1 = data1.toSet().toList();
  print('Data yang unik : $dataUnik1');
  print('=============');

  List<String> data2 = [
    'JS Racing',
    'amuse',
    'spoon',
    'spoon',
    'JS Racing',
    'amuse',
  ];
  print('Contoh 2 \nData awal : $data2');
  List<String> dataUnik2 = data2.toSet().toList();
  print('Data yang unik : $dataUnik2');
}

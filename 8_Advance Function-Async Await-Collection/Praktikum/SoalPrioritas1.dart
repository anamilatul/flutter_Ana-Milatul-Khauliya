// //Soal Prioritas 1 (80)
Future<List<int>> loopData(List<int> listData, int pengali) async {
  List<int> newList = [];
  for (int i = 0; i < listData.length; i++) {
    await Future.delayed(Duration(seconds: 3));
    newList.add(listData[i] * pengali);
  }
  return newList;
}

void main() async {
  List<int> listData = [20, 30, 40, 50];
  int pengali = 3;
  print('List awal : $listData');
  print('$listData dikalikan dengan $pengali hasilnya : ');
  List<int> newList = await loopData(listData, pengali);
  print('List terbaru : $newList');
}

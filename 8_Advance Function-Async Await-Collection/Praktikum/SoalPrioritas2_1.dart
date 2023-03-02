void main() {
  List myList = [
    ['indo', 80],
    ['alpro', 90],
    ['matdis', 85]
  ];
  print('List : $myList');
  Map mapList = {for (var itemList in myList) '${itemList[0]}': itemList[1]};
  print('Ini map list : $mapList');
}

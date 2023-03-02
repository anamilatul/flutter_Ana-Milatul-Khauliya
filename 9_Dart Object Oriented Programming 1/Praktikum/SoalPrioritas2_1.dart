class Calculator {
  double angka1;
  double angka2;
  Calculator({
    required this.angka1,
    required this.angka2,
  });

  double add() {
    return angka1 + angka2;
  }

  double substract() {
    return angka1 - angka2;
  }

  double multiply() {
    return angka1 * angka2;
  }

  double divide() {
    return angka1 / angka2;
  }
}

void main() {
  Calculator calc = Calculator(angka1: 10.0, angka2: 2.5);
  print('Hasil penjumlahan : ${calc.add()}');
  print('Hasil pengurangan : ${calc.substract()}');
  print('Hasil perkalian : ${calc.multiply()}');
  print('Hasil pembagian : ${calc.divide()}');
}

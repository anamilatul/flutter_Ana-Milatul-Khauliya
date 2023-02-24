import 'dart:io';

void main() {
  piramidBintang();
  polaJamPasir();
  faktorial(10);
  faktorial(40);
  faktorial(50);
}

void faktorial(int bilBulat) {
  double fakt = 1;
  if (bilBulat < 0) {
    print("$bilBulat bukan bilangan bulat");
  } else {
    for (int i = 1; i <= bilBulat; i++) {
      fakt *= i;
      fakt.toString();
    }
    print("Hasil faktorial dari $bilBulat adalah $fakt ");
  }
}

void polaJamPasir() {
  int tinggiPola = 6;
  for (var i = 1; i <= tinggiPola; i++) {
    for (var j = 1; j < i; j++) {
      stdout.write(" ");
    }
    for (var k = 1; k <= (tinggiPola - i + 1) * 2 - 1; k++) {
      stdout.write("0");
    }
    stdout.write("\n");
  }
  for (var l = 2; l <= tinggiPola; l++) {
    for (var m = 1; m <= tinggiPola - l; m++) {
      stdout.write(" ");
    }
    for (var m = 1; m <= l * 2 - 1; m++) {
      stdout.write("0");
    }
    stdout.write("\n");
  }
}

void piramidBintang() {
  for (var i = 0; i <= 8; i++) {
    for (var j = 7; j >= i; j--) {
      stdout.write(" ");
    }
    for (var k = 1; k <= i; k++) {
      stdout.write("*");
    }
    for (var l = 1; l <= i - 1; l++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}

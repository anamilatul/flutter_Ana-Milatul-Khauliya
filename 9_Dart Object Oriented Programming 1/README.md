# Dart Object Oriented Programming

## Perkenalan Object Oriented Programming (OOP)
Program disusun dalam bentuk abstraksi object. Kita bisa menampilkan atribut atau property yang relevan saja dan menyembunyikan detailnya. Data dan proses diletakkan pada abstraksi tersebut.
Tujuan utama penggunaan pemograman berorientasi objek (OOP) adalah kita dapat membuat suatu blueprint yang nantinya bisa diinstance kebanyak objek sehingga kode program lebih `modular` dan `reusable` dengan begitu menghindari dari boilerplate code.
### Keuntungan OOP
- Mudah di troubleshoot
- Mudah digunakan ulang
### Penggunaan 
Penggunaan OOP selain pada dart yaitu C++, Java, Javascript, Python.
### Komponen
OOP memiliki beberapa bagian, diantaranya :
- Class
- Object
- Property
- Method
- Inheritance
- Generic

## Class
`Class` merupakan abstraksi dari sebuah benda (object). Memiliki ciri-ciri yang disebut `property`. Class juga memiliki sifat dan kemampuan yang disebut `method`.
### Membuat Class
- Menggunakan kata kunci class
- Memiliki nama, penulisan nama class diawali dengan huruf besar atau `PascalCase`
- Detail class (property & method) diletakkan dalam kurung kurawal
```
class Hewan{
    // property
    // method
}
```
### Membuat Object
Dari class yang sudah dibuat, kita bisa membuat object berdasarkan class tersebut. Dapat menyimpan object dalam sebuah variabel yang bisa disebut dengan `instance of class`. Object diperlakukan seperti data.
Contoh :
```
void main(){
    var h1 = Hewan();
    var h2 = Hewan();
    var h3 = Hewan();
}
```

## Property
Property merupakan ciri-ciri suatu class atau hal-hal yang dimiliki suatu class untuk menggambarkan suatu object. `Property` memiliki sifat seperti `variabel`. Ketika membuat property perlu menentukan tipe datanya dan menginisialisasikan nilainya secara eksplisit atau property tersebut dibuat nullable (dengan menambahkan tanda tanya setelah tipe data).
Contoh property dan cara aksesnya : 
```
class Hewan {
  int mata = 2;
  int kaki = 4;
}

void main() {
  var h1 = Hewan();
  print(h1.mata);
  print(h1.kaki);
}
```

## Method
Method merupakan sifat atau perilaku suatu class, aktivitas yang dapat dikerjakan suatu class. `Method` memiliki sifat seperti `fungsi`. Membuat method seperti fungsi tetapi terletak dalam sebuah class. Cara menjalankan method seperti menggunakan fungsi tetapi melalui sebuah object.
Contoh :
```
class Kucing {
  void bersuara() {
    print('Miaw');
  }
}

void main() {
  var h1 = Kucing();
  h1.bersuara();
}
```

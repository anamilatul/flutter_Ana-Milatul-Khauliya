# Deep Dive Into Dart Object Oriented Programming

## Constructor
`Constructor` yaitu method yang dijalankan saat pembuatan object. Constructor dapat menerima parameter, tidak memiliki return. Memiliki nama yang sama dengan nama class.
Contoh :
```
class Hewan{
    var mata;
    var kaki;
    Hewan(){
        mata = 0;
        kaki = 0;
    }
}
```
## Inheritance
Inheritance atau pewarisan yaitu kemamampuan suatu program untuk membuat class baru dengan memanfaatkan class yang sudah ada. Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru. Untuk melakukan `inheritance` kita bisa menambahkan `extends` pada saat pembuatan class baru. Proses membuat object dari class yang terjadi inheritance seperti pembuatan object pada umumnya.

Contoh :
```
class Kambing extends Hewan{
    Kambing(){
        mata=2;
        kaki=4;
    }
}
void main(){
    var k1 = Kambing();
    print(k1.mata);

    var h1 = Hewan();
    print(h1.mata);
}
```
## Method Overriding
Method Overriding yaitu menulis ulang method yang ada pada super-class. Bertujuan agar class memiliki method yang sama, dengan proses yang sama.
#### Melakukan Overriding
- Dilakukan pada class yang melakukan inheritance
- Method sudah ada pada class induk
- Method ditulis ulang seperti membuat method baru pada class anak.
- Ditambahkan tanda @override di baris sebelum method dibuat.

Contoh :
```
class Kambing extends Hewan {
  @override
  reproduksi() {
    print('Melahirkan');
  }

  @override
  bernafas() {
    print('Paru-paru');
  }
}

void main() {
  var k1 = Kambing();
  k1.reproduksi();
  k1.bernafas();

  var h1 = Hewan();
  h1.reproduksi();
  h1.bernafas();
}
```

## Interface
Interface yaitu class yang menunjukkan method apa saja yang ada pada suatu class. Seluruh method wajib di-override. `Interface` dapat digunakan dengan menggunakan `implements`.
#### Menggunakan Interface
- Sekilas mirip inheritance
- Pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk.

Contoh :
```
class Kambing implements Hewan {
  @override
  bernafas() {
    print('paru-paru');
  }

  @override
  reproduksi() {
    print('melahirkan');
  }
}
```
## Abstract Class
Abstrac class yaitu class yang memang tidak secara rinci mendefinisikan objek tertentu, sehingga class abstrak biasa dijadikan sebagai gambaran umum. `Abstract class` biasa ditandai dengan keyword `abstract` sebelum keyword `class`. Penggunaan abstract class mewarisi ke child class dengan keyword `extends`. Abstract class tidak dapat digunakan untuk membentuk object, sehingga menyebabkan `error`.
Contoh :
```
abstract class Hewan {
  reproduksi() {
    print('Tidak diketahui');
  }
}
```
## Polymorphism
Polymorphism yaitu kemampuan data berubah menjadi bentuk lain. Tipe data yang dapat digunakan adalah super class. Dapat dilakukan pada class dengan `extends` atau `implements`.
#### Melakukan Polymorphism
Object dari class Kambing dengan tipe data class Hewan.
Contoh :
```
class Hewan {
  reproduksi() {
    print('Tidak diketahui');
  }

  bernafas() {
    print('Tidak diketahui');
  }
}

class Sapi extends Hewan {
  @override
  reproduksi() {
    print('melahirkan');
  }

  @override
  bernafas() {
    print('paru-paru');
  }
}

class Kucing extends Hewan {
  @override
  reproduksi() {
    print('melahirkan');
  }

  @override
  bernafas() {
    print('paru-paru');
  }
}

void main() {
  Hewan k1 = Hewan();
  print(k1);

  k1 = Sapi();
  print(k1);
  k1.bernafas();

  k1 = Kucing();
  print(k1);
  k1.bernafas();
}
```

## Generics
- Dapat digunakan pada class atau fungsi
- Memberi kemampuan agar dpat menerima data dengan tipe data yang berbeda
- Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi.
#### Membuat class dengan Generics
- Class Hadiah dapat dimasukkan data dengan tipe T
- Tipe T dapat digunakan di seluruh class Hadiah

Contoh :
```
class Hadiah<T>{
  var isi;
  Hadiah(T i){
    isi = i;
  }
}
```
#### Menggunakan class dengan Generics
Setelah nama class, menjadi tempat tipe data yang diinginkan.
Contoh :
```
void main(){
  var h1 = Hadiah<String>('laptop');
  print(h1.isi);
  var h2 = Hadiah<int>(20);
  print(h2.isi);
}
```
#### Membuat fungsi dengan Generics
Setelah nama fungsi, menjadi tempat variabel generics
Contoh :
```
void cekTipe<T>(T data){
  print(data.runtimeType);
}
```
#### Menggunakan fungsi dengan Generics
```
void main(){
  cekTipe<String>("one");
  cekTipe<int>(1);
}
```
# Advance Function, Async Await, Collection Dart

## Fungsi Lanjutan
### Anonymous Function
- Tidak memiliki nama
- Fungsi sebagai data

Cara penulisan :
```
(){
    //perintah yang dijalankan saat fungsi dipanggil
}
```
Contoh :
```
var hello = () {
  print("Hai");
};

var jumlah = (int a, int b) {
  return a + b;
};

void main() {
  hello();
  print(jumlah(3, 5));
}
```

### Arrow Function
- Bisa memiliki nama atau tidak
- Berisi 1 data (dari proses maupun data statis)
- Nilai return fungsi diambil dari data tersebut

Cara penulisan :
```
() => proses_yg_dijalankan_saat_fungsi_dipanggil();
```
Contoh :
```
var hello = () => print("Hai");
var jumlah = (int a, int b) => a + b;

void main() {
  hello();
  print(jumlah(3, 5));
}
```

## Async Await
Dengan menggunakan async await, kita dapat menjalankan beberapa proses secara asyncronus tanpa perlu menunggu proses lainnya selesai. Proses tersebut ditulis dalam bentuk fungsi. Function dengan keyword await akan menunggu hingga proses async selesai.

Contoh :
```
Future<void> p1() async {
  await Future.delayed(Duration(seconds: 2), () {
    print("Hallo from p1");
  });
}

void p2() {
  print("Hello from p2");
}

void main() async {
  await p1();
  p2();
}
```

## Tipe Data Future
Dengan menggunakan future, kita dapat membuat suatu proses berjalannya fungsi bisa diberi durasi. Jika kita ingin mengembalikan data return dari objek future, diperlukan keyword async untuk menjalankan proses programnya. Hal ini dikarenakan proses Future berjalan secara asyncronus.

Contoh :
```
Future<String> p1() {
  return Future.delayed(Duration(seconds: 1), () {
    return 'hello from p1';
  });
}

void main() async {
  var data = await p1();
  print(data);
}
```
## Collection
Collection yaitu struktur data yang lebih canggih untuk menangani masalah yg lebih kompleks. Collection bisa menyimpan kumpulan data atau objek lain pada satu tempat.
### List
List dapat menyimpan data secara berbaris dan setiap data di dalamnya memiliki index. Index pada list dimulai dari 0.

Contoh :
```
void main() {
  var scores = [10, 20, 30, 40, 50, 60];
  for (var score in scores) {
    print(score);
  }
}
```
### Map
Map digunakan untuk menyimpan data secara key-value. Key berguna selayaknya index pada list.

Contoh :
```
void main() {
  var student = {
    'name': 'Milatul',
    'age': 20,
  };
  print(student);
  for (var key in student.keys) {
    print(student[key]);
  }
}
```

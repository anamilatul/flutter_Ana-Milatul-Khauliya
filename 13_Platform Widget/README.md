# Platform Widget

## MaterialApp
`MaterialApp` merupakan widget dasar yang mengemas seluruh widget dalam aplikasi yang dapat digunakan pada sistem `android`. Widget ini di import dari `package:flutter/material.dart`

`MaterialApp` menyediakan fitur-fitur seperti navigasi, themeing, dan penanganan gestur standar untuk membuat aplikasi yang konsisten dan mudah digunakan. Beberapa `properti` yang sering digunakan pada MaterialApp adalah:
- title : digunakan untuk menentukan judul aplikasi.
- home : digunakan untuk menentukan widget pertama yang ditampilkan ketika aplikasi pertama kali dibuka.
- routes : digunakan untuk menentukan rute navigasi pada aplikasi.
- theme : digunakan untuk menentukan tema aplikasi.
- debugShowCheckedModeBanner : digunakan untuk menampilkan atau menyembunyikan banner debug di aplikasi.

### Scaffold
Scaffold merupakan widget dasar untuk membangun sebuah halaman pada MaterialApp.
```
Scaffold(
    appBar : AppBar(...), //bar menu bagian atas halaman
    drawer : Drawer(...), //menu bagian samping halaman
    body : ..., //bagian utama halaman
    bottomNavigationBar : BottomNavigationBar(...), //menu bagian bawah halaman
);
```

## CupertinoApp 
`CupertinoApp` merupakan widget dasar yang mengemas seluruh widget dalam aplikasi yang digunakan pada sistem `iOS`. Widget ini di import dari `package:flutter/cupertino.dart`
Struktur :
- Variabel _themeDark dibuat untuk menyimpan tema
- Diperlukan karena Cupertino `tidak menyediakan ThemeData.dark()` seperti pada Material
```
CupertinoApp(
    theme : _themeDark, //mengatur tema aplikasi
    home : const HomePage(), //halaman utama
);
```

### CupertinoPageScaffold
`CupertinoPageScaffold` merupakan `widget dasar` untuk membangun sebuah halaman pada `CupertinoApp`
```
CupertinoPageScaffold(
    navigationBar : CupertinoNavigationBar(...), //Bar menu bagian atas halaman
    child : ..., //Bagian utama halaman
);
```
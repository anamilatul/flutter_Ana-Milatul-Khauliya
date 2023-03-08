# Introduction Flutter Widget

## Perkenalan Flutter
Flutter adalah sebuah framework open-source yang dikembangkan oleh Google untuk membangun antarmuka (user interface/UI) aplikasi mobile, dekstop dan web.
### Keunggulan Flutter
- Mudah digunakan dan dipelajari
- Produktivitas tinggi
- Dokumentasi lengkap
- Komunitas yang berkembang
### Bagian dari Flutter
- SDK (Software Development Kit) : alat-alat untuk membantu proses pengembangan aplikasi
- Framework : Perlengkapan untuk membentuk aplikasi yang dapat dikostumisasi
### Membuat Project
```
flutter create <nama_project>
```
### Menjalankan Project
- Masuk ke direktori project
- Jalankan perintah :
```
flutter run
```
### Struktur Direktori
- Direktori Platform : 
    - android
    - ios
    - web

- Direktori Project :
    - lib : ruang kerja utama
    - test : aktivitas pengujian
### File Utama
File utamanya yaitu main.dart yang berada dalam direktori lib. File ini merupakan file yang pertama kali dibaca dan dijalankan.

## Widget
Widget digunakan untuk membentuk antarmuka (UI) yang berupa class. Widget dapat terdiri dari beberapa widget lainnya. 
Widget memiliki dua tipe yaitu Stateful dan Stateless. `Stateless widget` adalah widget `statis` dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Sedangkan `Stateful widget` berlaku sebaliknya dimana sifatnya adalah `dinamis`, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.
### Stateless Widget
- Tidak bergantung pada perubahan data
- Hanya fokus pada tampilan
- Dibuat dengan extends pada class StatelessWidget
### Stateful Widget
- Mementingkan pada perubahan data
- Dibuat dengan extends pada class StatefulWidget
- 1 Widget menggunakan 2 class (widget dan state)

## Built in Widget
Built in widget yaitu widget yang dapat langsung digunakan dan sudah terinstall bersama flutter.

Contoh :
1. MaterialApp : Membangun aplikasi dengan desain material
2. Scaffold : Membentuk sebuah halaman
3. Appbar : Membentuk application bar yang terletak pada bagian atas halaman
4. Text : Menampilkan teks
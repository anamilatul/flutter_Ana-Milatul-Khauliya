# Flutter State Management

## Declarative UI
Flutter memiliki sifat declarative yang artinya flutter membangun UInya pada screen untuk mencerminkan keadaan state saat ini.
### State
- State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
- Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah.
- Ada 2 jenis state dalam flutter, ephemeral state dan app state
#### Ephemeral State
- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contohnya : PageView, BottomNavigationBar, Switch Button
- Tidak perlu state management yang kompleks
- Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

#### App State
Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya : Login info, pengaturan preferensi pengguna, keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda.

## Pendekatan State Management
- setState -> Lebih cocok penggunaanya pada ephemeral state
- Provider -> Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari.
- Bloc -> menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logic nya

## State Management Provider
### Deskripsi
Class yang perlu diperhatikan dalam penggunaan provider, yaitu :
1. Dari package Provider
     - ChangeNotifierProvider
     - MultiProvider
     - Consumer
2. Built in class dari Flutter SDK
    - ChangeNotifier

### ChangeNotifier
- Class yang menambah dan menghapus listeners
- Digunakan dengan cara meng-exstend
- Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga UInya harus dibagun ulang.

### ChangeNotifierProvider
- Widget yang membungkus sebuah class
- Mengimplementasikan ChangeNotifier dan menggunakan child untuk widget UInya
- Menggunakkan create, provider yang akan menyimpan model yang telah dibuat
### MultiProvider
Jika kita membutuhkan lebih satu provider
```
MultiProvider(
    providers : [
        Provider<MyModel>(create : (_) => Something()),
        Provider<MyDatabase>(create: (_) => SomethingMore()),       
    ],
    child : <widget>
);
```
### Consumer
- idget yang mendengarkan perubahan kelas yang mengimplementasikan ChangeNotifier
- Membangun ulang widegt yang dibungkus Consumer saja
- Penting untuk meletakkan Consumer pada lingkup sekecil mungkin
- Membutuhkan properti builder yang berisi context, model, dan child
```
Consumer<MyModel>(
    builder : (context,model,child){
        return Text('Hai ${model.value}');
    }
);
```
## State Management Bloc
## Deskripsi
Bloc(Business Logic Component) yaitu memisahkan antara business logic dengan UI.
Bloc digunakan karena simple, powerful, dan testable. 

## Cara Kerja Bloc
- Menerima event sebagai input
- Dianalisa dan dikelola di dalam Bloc
- Menghasilkan state sebagai output

## Stream
Stream yaitu rangkaian proses secara asyncronus, dan sebagai actor utama di dalam Bloc

## Cara mengaplikasikan Bloc
- Install package flutter_bloc (agar dapat menggunakan koe Bloc) dan equatable (mencegah rebuilds yang tidak dibutuhkan)
- Membuat folder Bloc
- Menambahkan event
- Menambah State
- Menambahkan logika bisnis (bisa menggunakan emit untuk mengirim state terbaru)
- Menambahkan BlocProvider
- Membangun UI
- Menambahkan BlocBuilder
- Mengganti Text ->Menamipilkan nilai terbaru yang dimiliki state
- Menambahkan context.read -> Penambahan ini bisa dilakukan pada fungsi onPressed ElevatedButton
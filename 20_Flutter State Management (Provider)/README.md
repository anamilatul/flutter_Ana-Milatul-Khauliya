# Flutter State Management (Provider)

## Definisi State
State adalah data atau informasi yang dapat dibaca saat pembuatan widget. State dapat berubah saat widget sedang aktif. State hanya dimiliki oleh `StatefulWidget`. 
### Memanfaatkan State
- Dibuat sebagai property dari class
- Digunakan pada widget saat build
```
//property
var number = 0;
//build
Text('$number');
```
### Mengubah State
Menggunakan method setState
```
ElevatedButton(
    child : const Text('Plus'),
    onPressed : () {
        setState((){
            num = num+1;
        });
    },
);
```

## Global State
Global state adalah state yang bisa digunakan pada seluruh widget. Global state diperlukan agar antara widget dapat memanfaatkan state yang sama dengan mudah. Provider dapat digunakan untuk state management yang lebih kompleks dan provider harus diinstall terlebih dahulu agar bisa digunakan.

### Instalasi Provider
- Menambahkan package provider pada bagian dependencies dalam file pubspec.yaml
- Jalankan perintah flutter pub get

### Membuat State Provider
- Membuat file bernama contact.dart
- Mendefinisikan state dalam bentuk class
```
class Contact with ChangeNotifier {
    List<Map<String,String>> _contacts = [];
    List<Map<String, String>> get contacts => _contacts;

    void add (Map<String, String> contact){
        _contacts.add(contact);
        notifyListeners();
    }
}
```
### Mendaftarkan State Provider
- Import dalam file main.dart
- Daftarkan pada runApp dengan MultiProvider
### Menggunakan State dari Provider
- Simpan provider dalam variabel
- Ambil data dari provider melalui getter
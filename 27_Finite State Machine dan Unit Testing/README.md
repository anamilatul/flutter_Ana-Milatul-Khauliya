# Finite State Machine dan Unit Testing

## Finite State Machines
## Definisi
Finite state machine yaitu mesin yang memiliki jumlah state. Tiap state menunjukkan apa yang terjadi sebelumnya.
### Contoh :
Terdapat 3 state yang menunjukkan kejadian dalam suatu proses.
- IDDLE saat tidak terjadi proses
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal diselesaikan
#### Contoh Sukses
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING kembali menjadi IDDLE saat proses selesai
#### Contoh Gagal
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING menjadi ERROR saat terjadi kegagalan
- ERROR kembali menjadi IDDLE

### Implementasi pada View-Model
1. Menambah Enum
    Membuat enum untuk masing-masing state :
    - none saat IDDLE
    - loading saat RUNNING
    - error saat ERROR
2.  Menambah Getter-Setter
    Membuat getter-setter untuk menyimpan state dari widget
3. Gunakan State
    Tiap Proses yang perlu state tersebut, dapat memanfaatkannya

### Implementasi pada Widget

1. Perbedaan Tampilan Tiap State

   - Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan.
   - Saat state menunjukkan RUNNING, maka ditampilkan progress indicator.
   - Saat state menunjukkan IDDLE setelah RUNNING, maka ditampilkan data yang didapatkan.
   - Saat state menunjukkan ERROR, maka ditampilkan pesan yang menunjukkan bahwa proses tidak dapat diselesaikan.

## Unit Test
## Definisi
Unit test adalah salah satu jenis pengujian pada perangkat lunak. Pengujian dilakukan pada unit dalam perangkat lunak. Unit yang dimaksud umumnya adalah fungsi atau method.
## Tujuan
- Memastikan fungsi dapat mengolah berbagai jenis input
- Memastikan hasil dari suatu fungsi atau method sudah sesuai
- Menjadi dokumentasi
## Cara melakukan Unit Test
- Manual : Unit dijalankan dan dicek hasilnya secara manual
- Automated : Menulis script yang dapat dijalankan berkali-kali menggunakan test runner.
1. Menambahkan dependencies
    - Menambahkan `test`, pada bagian `dev_dependencies` dalam file pubspec.yaml
    - Menjalankan flutter pub get
2. Membuat File Test
3. Menulis Test Script
    - Import package test
    - Membuat test case
    - Menjalankan fungsi 
    - Cek hasil dengan expect
4. Menjalankan Test : menggunakan perintah `flutter test`
5. Mengelompokkan Test
    - Beberapa test dengan subjek yang sama diletakkan dalam sebuah kelompok
    - Dilakukan dengan menggunakan Group

# Mocking
## Definisi
Proses yang terkait dengan sistem eksternal dapat mempengaruhi berjalannya pengujian. Pengaruh tersebut dapat mengganggu proses pengujian. Mocking dilakukan untuk menghindari masalah-masalah tersebut.
## Cara Kerja Mocking
- Suatu Object dibuat bentuk tiruannya
- Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli
- Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal.
1. Menambah Dependencies
    - Menambahkan `mockito` dan `build_runner`, pada bagian `dev_dependencies` dalam file pubspec.yaml
    - Jalankan flutter pub get di terminal
2. Melakukan mocking
    - Mengubah kode agar dapat dilakukan mocking seperti menguabah kode yang sebelumnya static menjadi non static
    - Memasang annotation untuk membuat mock
    - Membuat file mock dengan menjalankan perintah `flutter pub run build_runner build`
    - Menggunakan mock yang sudah dibuat
3. Menjalankan Test
    Dengan mocking, test dapat berjalan lebih cepat.
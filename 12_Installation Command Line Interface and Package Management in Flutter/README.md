# Installation Command Line Interface and Package Management in Flutter

## Flutter CLI
Flutter CLI (Command Line Interface) adalah antarmuka baris perintah untuk Flutter yang digunakan untuk mengembangkan, membangun, dan mengelola proyek Flutter dari terminal atau command prompt pada sistem operasi. Flutter CLI menyediakan berbagai perintah yang berguna dalam proses pengembangan aplikasi Flutter, seperti membuat proyek baru, menjalankan aplikasi, menambahkan paket, memperbarui dependensi, menguji kode, dll.
## Important CLI Commands
- Flutter Doctor : Perintah untuk menampilkan informasi software yang dibutuhkan flutter.
    ```
    flutter doctor
    ```
- Flutter Create : Perintah untuk membuat project aplikasi flutter baru di directory
    ```
    flutter create <APP_NAME>
    ```
- Flutter Run : Perintah untuk menjalankan project aplikasi di device yang tersedia
    ```
    flutter run <DART_FILE>
    ```
- Flutter Emulator : Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru.
    ```
    flutter emulators
    flutter emulators --launch <EMULATOR_ID>
    flutter emulators --create [--name xyz]
    ```
- Flutter Channel : Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini.
    ```
    flutter channel
    ```
- Flutter Pub
    - Flutter pub add, untuk menambahkan packages ke dependencies yang ada di pubspec.yaml
    ```
    flutter pub add <package_name>
    ```
    - Flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml
    ```
    flutter pub get
    ```
- Flutter Build : Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dll
    ```
    flutter build <DIRECTORY>
    ```
- Flutter Clean : Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator. Perintah ini akan memperkecil ukuran project tersebut.
    ```
    flutter clean
    ```

## Packages Management
Flutter mendukung sharing packages, yang mana packages dibuat developer lain.Tujuannya yaitu untuk mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch. Untuk mendapatkan packages di website [pub.dev](https://pub.dev/)
### Cara menambahkan packages
- Cari package di pub.dev
- Copy baris dependencies yang ada di bagian installing
- Buka pubspec.yaml
- Paste barisnya dibawah dependencies pubspec.yaml
- Run flutter pub get di terminal
- Import package di file dart agar bisa digunakan
- Stop atau restart aplikasi jika dibutuhkan
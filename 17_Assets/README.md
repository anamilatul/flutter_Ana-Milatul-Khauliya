# Assets

## Assets
Assets adalah file yang dibundled dan dideployed bersamaan dengan aplikasi.
Tipe-tipe asstes, seperti : static data (JSON files), icons, images, dan font file (ttf).
### Menentukan Assets
- Futter menggunakan pubspec.yaml
- Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi
- Gunakan karakter " /" untuk memasukkan semua assets dibawah satu directory name

## Image
Penggunaan image/gambar akan membuat tampilan aplikasi menjadi lebih menarik. FLutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP, dan WBMP. Menampilkan gambar bisa dari project assets dan internet.
### Loading Images
- Gunakan widget Image
- Membutuhkan properti image dengan class AssetImage()

```
body : Column(
    children : const[
        Image(
            image : AssetImage('assets/background.jpg'),
        ),
        Image(
            image : AssetImage('assets/icon.png'),
        ),
    ]
)
```
- Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
- Menggunakan method Image.network, mendapatkan data image melalui internet dengan menggunakan string url nya
```
body : Column(
    children : [
        Image.assets('assets/background.jpg'),
        Image.network('https://')
    ]
)
```

## Font
Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi. Font yang mau dipakai biasanya ditentukan oleh UI designer. Penerapan font menggunakan custom font atau dari package.
### Custom Font
Cara menggunakan custom font :
- Cari dan download font di <https://fonts.google.com/>
- Import file .ttf
- Daftarkan font di pubspec.yaml
- Mengatur font sebagai defult (Pengaturan dapat dilakukan di MaterialApp pada bagian theme)
- Gunakan font di spesifik widget
```
Text(
    'Alam',
    style: TextStyle(
        fontSize: 20,
        fontFamily: 'Roboto',
    ),
),
```
### Font dari Package
- Tambahkan package google_fonts 
- Import package di file dart
- Gunakan font dengan memanggil GoogleFonts.namaFont()

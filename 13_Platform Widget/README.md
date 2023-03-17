# Platform Widget

## MaterialApp
MaterialApp merupakan widget dasar yang mengemas seluruh widget dalam aplikasi yang dapat digunakan pada sistem android. Widget ini di import dari package:flutter/material.dart 
### Scaffold
Scaffold merupakan widget dasar untuk membangun sebuah halaman pada MaterialApp
Struktur :
- appBar
- body
- bottomNavigationBar
## CupertinoApp 
CupertinoApp merupakan widget dasar yang mengemas seluruh widget dalam aplikasi yang digunakan pada sistem iOS. Widget ini di import dari package:flutter/cupertino.dart 
Struktur :
- Variabel _themeDark dibuat untuk menyimpan tema
- Diperlukan karena Cupertino tidak menyediakan ThemeData.dark() seperti pada Material
### CupertinoPageScaffold
CupertinoPageScaffold merupakan widget dasar untuk membangun sebuah halaman pada CupertinoApp
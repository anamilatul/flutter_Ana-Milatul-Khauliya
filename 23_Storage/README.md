# Storage

## Penyimpanan Lokal
Penyimpanan Lokal diperlukan untuk efisiensi penggunaan data internet. Ada beberapa cara implementasi penyimpanan lokal, contohnya seperti :
- Shared Preferences
- Local Database

## Shared Preferences
- Menyimpan data yang sederhana
- Penyimpanan dengan format key-value
- Menyimpan tipe data dasar seperti teks, angka, dan boolean
- Contoh penggunaan shared preference seperti menyimpan data login dan menyimpan riwayat pencarian

## Local Database (SQLite)
- Menyimpan dan meminta data dalam jumlah besar pada local device
- Bersifat private
- Menggunakan SQLite database melalui package `sqflite`
- SQLite adalah database open source yang mendukung insert, read, update dan remove data.

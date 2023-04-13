# Introduction REST API-JSON serialization/deserialization

## REST API (Representational State Transfer Application Programming Interface)
REST API merupakan jembatan antara server dengan aplikasi kita. Arsitektur yang dibuat memisahkan tampilan dengan proses bisnis. Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request.

## HTTP
Http adalah protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web.
### Pola Komunikasi
- Client mengirim request
- Server mengolah dan membalas dengan memberi response
### Struktur Request
- URL : Alamat halaman yang akan diakses
- Method (GET,POST,PUT,DELETE) : Menunjukkan aksi yang diinginkan
- Header : Informasi tambahan terkait request yang dikirimkan
- Body : Data yang disertakan bersama request

### Struktur Response
- Status Code : Kode yang mewakili keseluruhan response, baik sukses maupun gagal
- Header : Informasi tambahan terkait response yang diberikan
- Body : Data yang disertakan bersama response

## Dio
Dio adalah sebuah package yang tersedia di pub.dev yang merupakan `Http Client` dan dimanfaatkan untuk melakukan `REST API`. 
### Instalasi 
- Menambahkan packages dio pada pubspec.yaml
- Jalankan perintah flutter pub get pada terminal
### Penggunaan 
```
import 'package:dio/dio.dart';

void main() {
  Dio()
      .get(
          "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts")
      .then((response) {
    print(response);
  });
}
```
## Serialisasi JSON
JSON (Javascript Object Notation) yang umum digunakan pada API. Cara penulisan data dalam bentuk key-value. Serialisasi JSON yaitu mengubah struktur data ke bentuk JSON.
    `Map/List -> Serialisasi -> JSON`
Serialisasi JSON dengan menggunakan fungsi `jsonEncode` dari package `dart:convert`
## Deserialisasi JSON
Deserialisasi JSON yaitu mengubah bentuk JSON ke struktur data. Menggunakan fungsi `jsonDecode` dari package `dart:convert`.

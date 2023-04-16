# UI Testing

## Definisi
Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna.
## UI Testing di Flutter
UI Testing disebut juga widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.
## Keuntungan UI Testing
- Memastikan seluruh widget memberi tampilan yang sesuai
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget
## Cara melakukan UI Testing
1. Instalasi package testing -> Package testing biasanya sudah terinstall sejak projek pertama kali dibuat. 
2. Penulisan script testing
    - Dilakukan pada folder `test` 
    - Nama file harus diikuti `_test.dart` 
    - Tiap file berisi fungsi `main()` yang didalamnya dapat dituliskan script testing
    - Tiap skenario pengujian disebut `test case`
    ```
    void main(){
        testWidgets('Judul halaman harus ...',(WidgetTester tester) async{
            //...
        });
        testWidgets('Tombol harus ...',(WidgetTester tester) async{
            //...
        });

    }
    ```

3. Script Testing
    1. Test case diawali dengan `testWidgets` dan diberi judul
    2. Simulasi proses mengaktifkan halaman ContactScreen
    3. Memeriksa apakah halaman tersebut terdapat teks "Contact Screen"
    ```
    //1
    testWidgets('Judul halaman harus Contacts', (WidgetTester tester) async{
        //2
        await tester.pumpWidget(
            const MaterialApp(
                home : ContactScreen(),
            ),
        );
        //3
        expect(find.text('Contacts'), findsOneWidget);
    });
    ```

4. Menjalankan Testing
    - Perintah `flutter test` akan menjalankan seluruh file test yang dibuat
    - Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil.
    - Jika testing gagal maka akan ditampilkan penyebab gagalnya pengujian.
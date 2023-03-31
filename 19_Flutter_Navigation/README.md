# Flutter Navigation

## Definisi Navigation
Navigation yaitu bagaimana pengguna dapat berpindah dari halaman satu ke halaman lain.
### Navigation Dasar
- Perpindahan halaman dengan mengunakan Navigator.push()
- Kembali ke halaman sebelumnya menggunakan Navigator.pop()

## Navigation dengan NameRout
Setiap halaman memiliki alamat yang disebut rout
- Perpindahan halaman menggunakan Navigator.pushNamed()
- Kembali ke halaman sebelumnya dengan menggunakan  Navigator.pop()

### Mendaftarkan Route
- Tambahkan initialRoute dan routes pada MaterialApp
- Tiap route adalah fungsi yang membentuk halaman
```
MaterialApp(
    debugShowModeBanner : false,

    //menentukan halaman yang pertama kali dibuka
    initialRoute : '/',

    //daftar halaman yang dapat di buka
    routes : {
        '/' : (_) => const HomeScreen(),
        '/about' : (_) => const AboutScreen(),
    },
);
```
### Perpindahan Halaman
```
ElevatedButton(
    child : const Text ('Go To About Page'),
    onPressed : (){
        // saat tombol ditekan pindah ke halaman dengan nama /about
        Navigator.of(context).pushNamed('about');
        
    },
);
```
### Mengirim data ke halaman baru
Dengan menggunakan arguments saat melakukan pushNamed
```
// halaman utama
ElevatedButton(
    child : const Text ('Go To About Page'),
    onPressed : (){
        // saat tombol ditekan pindah ke halaman dengan nama /about
        Navigator.of(context).pushNamed('about', arguments : 'Hai');
        
    },
);

// halaman baru
class AboutScreen extends StatelessWidget{
    //....
    @override
    Widget buid(BuildContext context){
        //mengambil parameter yang dikirim arguments
        final parameter = ModalRoute.of(context)!.settings.arguments as String

        return ...;
    }
}

```
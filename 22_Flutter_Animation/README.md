# Flutter Animation

## Animation
Menambahkan animasi membuat aplikasi terlihat hidup. Widget yang bergerak bisa menambah daya tarik. Bisa juga menerapkan pergerakan animasi dari kondisi A ke kondisi B.
## Implicit Animation
Animasi ini merupakan versi animasi dari widget yang sudah ada.
Jika tanpa animation maka perubahan ukuran container tampak kaku. Tetapi jika edngan animation maka tampilan bisa menjadi lebih hidup dan nyaman dilihat.
## Transition
Transition merupakan animasi yang terjadi saat perpindahan halaman. Dilakukan pada bagian `Navigator.push()`
```
Navigator.of(context).push(
    //Mengatur proses navigasi terjadi
    PageRouteBuilder(
        //proses pembuatan halaman abaoutScreen
        pageBuilder : (context,animation,secondaryAnimation){
            return const AboutScreen();
        },
        //proses mengatur transition
        //halaman AboutScren muncul dari tengah halaman menuju ke halaman penuh dengan transisi bergeser (slide)
        transitionBuilder:(context,animation,secondaryAnimation, child){
            final tween= Tween(begin : const Offset(0,.5),end : Offset.zero);
            return SlideTransition(
                position : animation.drive(tween),
                child : child,
            );
        },
        
    ),
);
```
## Transition Umum
### FadeTransition
Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh.
```
final tween  = Tween(begin : 0.0, end : 1.0);
return FadeTransition(
    opacity : animation.drive(tween),
    child : child,
);
```
### ScaleTransition
Halaman muncul dengan efek berubah ukuran dari tidak penuh menuju tampil keseluruhan
```
final tween = Tween(begin:0.0, end: 1.0);
return ScaleTransition(
    scale : animation.drive(tween),
    child : child,
);
```
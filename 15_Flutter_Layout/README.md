# Flutter Layout
## Layout 
Layout digunakan untuk mengatur tata letak. Layout berbentuk widget yang mengatur widget di dalamnya 
### Single-child Layout
#### Container 
Container digunakan untuk membuat sebuah box dan juga bis digunakan untuk membungkus widget lain. Box memiliki margin, padding, dan border.
Contoh penggunaan container :
```
Container(
    margin : const EdgeInsets.all(8),
    padding : const EdgeInsets.all(8),
    decoration : BoxDecoration(
        border.all(),
    ),
    child : const Text('Hai),
);
```
#### Center
Center biasa digunakan untuk membuat sebuah box, membungkus widget lain, memenuhi lebar dan tinggi ruang di luarnya, dan meletakkan widget berada di bagian tengah.
```
Center(
    child : Text(teks),
);
```
#### SizedBox
SizedBox digunakan untuk membuat sebuah bos, membungkus widget lain. Lebar dan tinggi box dapat diatur. SizedBox lebih sederhana dibanding dengan container.
```
SizedBox(
    width : 50,
    height: 67,
    child : Text(teks),
);
```
### Multi-child Layout
#### Column
Column digunakan untuk mengatur widget secara vertikal.
```
Column(
    children: const[
        Teks(teks),
        Teks(teks),
        Teks(teks),
    ]
);
```
#### Row
Row digunakan untuk mengatur widget secara horizontal
```
Row(
    children: const[
        Teks(teks),
        Teks(teks),
        Teks(teks),
    ]
);
```

#### ListView
ListView digunakan untuk mengatur widget dalam bentuk list dan memiliki kemampuan scroll.
```
ListView(
    children:[
        Container(
           margin: const EdgeInsets.all(10),
           padding: const EdgeInsets.all(10),
           decoration: BoxDecoration(
             border: Border.all(),
           ),
           child: const Text('H'),
        ),
        Container(
           margin: const EdgeInsets.all(10),
           padding: const EdgeInsets.all(10),
           decoration: BoxDecoration(
             border: Border.all(),
           ),
           child: const Text('I'),
        ),
    ]
);
```

#### GridView
GridView digunakan untuk mengatur widget dalam bentuk galeri.
```
GridView.count(
    crossAxisCount : angka,
    children :[],
);
```

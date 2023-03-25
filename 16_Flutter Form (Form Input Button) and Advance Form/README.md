# Flutter Form (Form Input Button) and Advance Form

## Form
Form digunakan untuk berinteraksi dengan pengguna, yang mana form dapat menerima data yang diisi oleh user. Isian data dapat lebih dari satu. Pembuatan Form dapat menggunakan `StatefulWidget`. `Keadaan form` disimpan menggunakan `GlobalKey<FormState>`
```
//property
var formKey = GlobalKey<FormState>();
//build
Form(
    key : formKey,
    child : inputWidgetts,
);
```

## Input
### TextField
- Menerima isian data dari pengguna
- Isian data dapat lebih dari satu
#### Membuat TextField
- Data diambil menggunakan TextEditingController
- Isian data berupa teks
```
//property
var inputController = TextEditingController();
//build
TextField(
    controller : inputController,
);
```
### Radio
- Memberi Opsi pada pengguna
- Hanya dapat memilih satu opsi
- Dalam membuat radio, data diambil menggunakan property (property disini digunakan untuk menerima input dari pengguna) dengan tipe data sesuai value pada radio

### Checkbox
- Memberi opsi pada pengguna
- Dapat memilih beberapa opsi
- Dalam membuat checkbox, data diambil menggunakan property bertipe bool
```
//property
var checkValue = false;
//build
Checkbox(
    value:checkValue,
    onChanged : (bool?value){
        setState((){
            checkValue = value ?? false;
        });
    },
);
```
### Dropdown Button
- Memberi opsi pada pengguna
- Hanya dpat memilih satu opsi
- Opsi tidak ditampilkan di awal, hanya tampil jika ditekan
- Dalam membuat dropdown button, data diambil menggunakan property dengan tipe data sesuai value pada DropdownMenuItem

## Button
Button bersifat seperti tombol yang dapat melakukan sesuatu ketika ditekan.
### ElevateButton
- Tombol yang timbul
- Jika ditekan, akan menjalankan onPressed
```
ElevatedButton(
    child: const Text('Submit'),
    onPressed : (){
        //do something 
    },
);
```
### IconButton
- Tombol yang hanya menampilkan icon
- Jika ditekan, akan menjalankan onPressed
```
IconButton(
    icon:const Icon(Icons.add),
    onPressed:(){
        //do something 
    }
);
```

## Advance Form Input
### Date Picker
Widget yang dapat digunakan oleh user untuk memasukkan tanggal (Tanggal kelahiran, waktu pemesanan tiket, waktu reservasi restoran, jadwal meeting,dll).
#### Cara membuat date picker
- Menggunakan fungsi bawaan flutter showDatePicker
- Fungsi showDatePicker memiliki tipe data future
- Menampilkan dialog material design date picker

Basic Code :
```
final selectDate = await showDatePicker(
    context : context,
    initialDate : currentDate,
    firstDate : DateTime(2002),
    lastDate : DateTime(currrentDate.year + 5),
);
```
- Menambahkan packages intl di pubspec.yaml
- Mempersiapkan variabel
```
class _HomePageState extends State<HomePage>{
    DateTime _dueDate = DateTime.now(); //untuk menyimpan tgl yg dipilih user
    final currentDate = DateTime.now(); //untuk menyimpan tanggal hari ini
}
```
- Membuat UI
- Menambahkan fungsi showDatePicker di dalam onPressed serta memanggil fungsi setStae di dalam onPressed
```
onPressed: () async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2002),
        lastDate: DateTime(currentDate.year + 4),
    );
    setState(() {
        if (selectedDate != null) {
            _dueDate = selectedDate;
        }
    });
 },
```
### Color Picker
Widget dimana user dapat memilih color. Penggunaan color picker bisa digunakan untuk berbagai macam kondisi.
Cara membuat color picker :
- Menggunakan packages flutter_colorpicker yang bisa diambil dari pub.dev
- Sebelum menggunakan packages tersebut, tambahkan packages tersebut di pubspec.yaml
- Mempersiapkan variabel : 
```
Color _currentColor = Colors.orange;
```
- Membuat UI
- Menambahkan fungsi showDialog dalam onPressed dengan return AlertDialog
- Import packages flutter_colorpicker dalam file dart
- Membuat kode untuk penggunaan packages flutter_colorpicker

### File Picker
File picker yaitu kemampuan widget untuk mengakses storage. Memilih dan membuka file.
#### Cara membuat file picker
- Menambahkan packages file_picker dan open_file di pubspec.yaml
- import packages file_picker dan open_file dalam file dart
- Membuat UI
- Membuat fungsi untuk mengexplore dan memilih file dari storage
- Memanggil fungsi _pickFile di dalam onPressed
- Membuat fungsi untuk membuka file yang dipilih
- Mengambil file dari object result dan memanggil fungsi _openFile di dalam fungsi _pickFile

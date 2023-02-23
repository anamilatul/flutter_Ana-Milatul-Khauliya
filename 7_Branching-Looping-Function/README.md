# Branching, Looping, Function

## Branching
Branching (Percabangan) berguna untuk mengatur alur jalannya program sesuai dengan suatu kondisi yang terpenuhi.
### if
- if memerlukan nilai bool (dari operator logical atau comparison)
### else
- else berjalan dengan if
- else menambah alternatif jika nilai bool adalah false
### else-if
- berjalan dengan if
- menambah alternatif jika nilai bool adalah false
- menambah pengujian nilai bool lain
```
void main() {
  var usia = 45;
  if (usia < 20) {
    print('Remaja');
  } else if (usia > 40) {
    print("Sudah tua");
  } else {
    print("Tidak punya golongan");
  }
}
```
## Looping
Perulangan (looping) adalah suatu bentuk kontrol program yang memungkinkan kita mengulang eksekusi program selama kondisi masih terpenuhi. Jadi bisa menjalankan proses berulang kali.
### For
- Diketahui berapa kali perulangan terjadi
- Memerlukan nilai awal
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan
- Memerlukan pengubah nilai
```
void main() {
  for (var i = 0; i < 7; i += 1) {
    print(i);
  }
}
```

### While
- Tidak diketahui berapa kali perulangan terjadi
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan
```
void main() {
  var i = 0;
  while (i < 7) {
    print(i);
    i++;
  }
}
```

### Do-While
- Mengubah bentuk while
- Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true
```
void main() {
  var i = 0;
  do {
    print(i);
    i++;
  } while (i < 9);
}
```
 
### Break dan Continue
- Perulangan menggunakan nilai bool untuk lanjut atau berhenti
- Break dan continue dapat menghentikan perulangan dengan mengabaikan nilai bool
- Continue dapat menghentikan satu kali proses
- Perbedaan :
    - Break : menghentikan seluruh proses perulangan
    - Continue : menghentikan satu kali proses perulangan

## Function
Function/ fungsi merupakan kumpulan perintah atau prosedur yang dapat digunakan berkali-kali. Cukup mengubah fungsi sekali, penggunaan lainnya akan ikut berubah.
```
void intro(){
    print("Hallo");
}
// Memanggil fungsi :
void main(){
    intro();
}
```

### Fungsi dengan parameter
Mengirim data saat menjalankan fungsi
Cara penulisan :
```
tipe_data nama_fungsi(tipe_data nama_parameter){
    //perintah yg ingin dijalankan saat fungsi dipanggil
}
```

### Fungsi dengan return
Memberi nilai pada fungsi saat dipanggil
Cara penulisan :
```
tipe_data nama_fungsi(tipe_data nama_parameter){
    //perintah yg ingin dijalankan saat fungsi dipanggil
    return nilai;
}
```

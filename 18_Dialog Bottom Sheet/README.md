# Dialog Bottom Sheets
 
## Alert Dialog
Untuk tampilan android, dari material design yang digunakan untuk menginformasikan pengguna tentang situasi tertentu. Pada Alert Dialog, bisa juga digunakan untuk mendapatkan input dari user. Dalam pembuatannya membutuhkan helper method showDialog. ShowDialog membutuhkan context dan builder. Di buildernya akan mereturn AlertDialog.

```
onPressed: () {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content: Text(
                'Are you sure ?',
            ),
            actions: [
                TextButton(
                onPressed: () {
                    Navigator.pop(context);
                },
                child: Text('Not'),
                ),
                TextButton(
                onPressed: onPressed,
                child: Text('yes'),
                ),
            ],
        ),
    );
},
```


## Bottom Sheet
Seperti dialog tetapi muncul dari bawah layar aplikasi. Cara menggunakannya yaitu dengan menggunakan fungsi bawaan flutter showModalBottomSheet. Bottom Sheet membutuhkan dua properti, yaitu context dan builder.
```
action : [
    IconButton(
        onPressed : (){
            showModalBottomSheet(
                shape : const RoundedRactangleBorder(
                    borderRadius : BorderRadius.vertical(
                        top : Radius.circular(15),
                    ),
                ),
                context: context,
                builder : (context)=>Container(),
            );
        },
        icon : const Icon(Icons.account_circle),
    ),
],
```

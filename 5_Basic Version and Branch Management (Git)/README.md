# Version Control and Branch Management (Git)

## Versioning
Versioning yaitu mengatur versi dari source code program. 

## Tools
- Version Control System (VCS)
- Source Code Manager (SCM)
- Revision Control System (RCS)

## GIT
Git salah satu version control system populer yang digunakan para developer untuk mengembangkan software secara bersama-sama. Git akan mentrack semua perubahan yang terjadi pada project.
Git bisa melakukan 'undo' pada point tertentu. Setiap perubahan yang ingin diupdate ke dalam sebuah server,kita akan kirimkan ke dalam satu commit (dalam satu commit bisa berisi banyak file yang bisa dicek perubahan-perubahan yang terjadi).

## Github
Github yaitu git server yang menampung repository atau project yang kita buat.
- Repository : direktori atau folder yang berisi file dan riwayat perubahan kode project.
- Clone : Salinan repository pada komputer untuk bisa diedit secara offline pada perangkat yang dimiliki
- Commit : Rekaman riwayat perubahan yang terjadi pada file.
- Fork : Menyalin repository orang lain ke akhun github.
- Branch : Cabang dari repository utama. 
- Pull request : Mengusulkan suatu perubahan pada repository ke pemilik/pemimpin project. Lalu, ia berhak menerima atau menolak usulan tersebut.

## Saving Changes
- GIT STATUS, ADD, COMMIT
$ git status
$ git add <directory>
$ git add .
$ git commit -m "initial commit"

- GIT DIFF, STASH
$ git diff --staged
$ git stash (for stashing your work)
$ git stash apply (re-applying stashed changes)

## Inspecting Repository
- GIT LOG, CHECKOUT
$ git log --oneline
$ git checkout a23k32
- GIT RESET
$ git reset a23k32

## Syncing
- GIT PUSH, FETCH & PULL
$ git fetch
$ git pull origin master
$ git push origin master

## Branches
- GIT BRANCHING
$ git branch --list
$ git branch <branch>
- GIT MERGE
$ git merge new-feature

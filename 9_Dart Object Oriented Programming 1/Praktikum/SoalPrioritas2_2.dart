class Course {
  String judul;
  String deskripsi;
  Course({
    required this.judul,
    required this.deskripsi,
  });
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];
  Student({
    required this.nama,
    required this.kelas,
  });

  void addCourse(Course course) {
    daftarCourse.add(course);
  }

  void deleteCourse(Course course) {
    daftarCourse.remove(course);
  }

  void viewAllCourse() {
    if (daftarCourse.isEmpty) {
      print('Belum ada course yang anda tambahkan');
    } else {
      for (var i = 0; i < daftarCourse.length; i++) {
        print(
            '${i + 1}. ${daftarCourse[i].judul} \nDeskripsi : ${daftarCourse[i].deskripsi}');
      }
    }
  }
}

void main(List<String> args) {
  Student student = Student(nama: 'Mila', kelas: 'Flutter-D');
  //add course
  Course course1 = Course(
      judul: 'FE Flutter', deskripsi: 'Front End Engineer Career With Flutter');
  Course course2 = Course(
      judul: 'Dart Programming', deskripsi: 'Belajar bahasa pemrograman dart');
  student.addCourse(course1);
  student.addCourse(course2);
  print("Daftar course yang sudah ditambahkan : ");
  student.viewAllCourse();
  student.deleteCourse(course1);
  print("\nDaftar Course After delete one course : ");
  student.viewAllCourse();
}

import 'student_model.dart';

class AllStudent {
  List<Student> studentList;

  AllStudent(this.studentList);

  getAllStudents() {
    for (int i = 0; i < studentList.length; i++) {
      if (studentList[i].id > 0) {
        print(
            "Id: ${studentList[i].id}, Ad: ${studentList[i].firstName}, Soyad: ${studentList[i].lastName}, Toplam bal: ${studentList[i].score}");
      }
    }
  }
}

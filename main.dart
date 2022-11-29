import 'dart:io';

import 'models/allStudent_model.dart';
import 'models/student_model.dart';

void main() {
  //1. Avtomatik siyahi yolu ile
  //List studentList = List.filled(50, ["Alovsat", "Alovsatov", 69.31]);

  //2. Elle elave etmekle;
  List studentList = [];
  List manuallyAdded = [];
  for (int i = 0; i < 50; i++) {
    stdout.write("Telebenin Adi:");
    manuallyAdded.add(stdin.readLineSync());
    stdout.write("Telebenin Soyadi:");
    manuallyAdded.add(stdin.readLineSync());
    stdout.write("Topladigi Bal:");
    manuallyAdded.add(stdin.readLineSync());
    studentList.add(manuallyAdded);
    stdout.write("Elave olundu. Davam etmek isteyirsiz? (y/n):");
    if (stdin.readLineSync() == "n") break;
  }
  List<Student> studentsModelList = List<Student>.filled(
      50, Student(id: 0, firstName: "", lastName: "", score: 0));

  for (int i = 0; i < studentList.length; i++) {
    studentsModelList[i] = Student(
        id: i + 1,
        firstName: studentList[i][0].toString(),
        lastName: studentList[i][1].toString(),
        score: int.parse(studentList[i][2].toString()));
  }

  AllStudent allStudents = AllStudent(studentsModelList);
  allStudents.getAllStudents();
}

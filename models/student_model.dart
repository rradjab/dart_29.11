class Student {
  final int id;
  String firstName;
  String lastName;
  int score;

  Student(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.score});

  getCurrentStudentData() {
    return "Ad: $firstName, Soyad: $lastName, Toplam bal: $score";
  }
}

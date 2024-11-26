// ignore_for_file: public_member_api_docs, sort_constructors_first
class Student {
  String idRegstrion;
  String name;
  String stude;
  String typeAcsp;
  String level;
  String smster;
  String number;
  String email;
  String passWord;

  Student({
    required this.idRegstrion,
    required this.name,
    required this.stude,
    required this.typeAcsp,
    required this.level,
    required this.smster,
    required this.number,
    required this.email,
    required this.passWord,
  });

  static List<Student> student = [
    Student(
        idRegstrion: "00000",
        name: "name",
        stude: "stude",
        typeAcsp: "typeAcsp",
        level: "level",
        smster: "smster",
        number: "number",
        email: "email",
        passWord: "00000")
  ];
}

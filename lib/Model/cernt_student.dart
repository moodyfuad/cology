class CerntStudent {
  String idRegstrion;
  String name;
  String stude;
  String typeAcsp;
  String level;
  String smster;
  String number;
  String email;
  String passWord;

  CerntStudent({
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
  
  static List<CerntStudent> student = [];
}
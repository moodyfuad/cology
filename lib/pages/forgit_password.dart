import 'package:cology/Model/cernt_student.dart';
import 'package:cology/Model/student.dart';
import 'package:cology/pages/college_page.dart';
import 'package:cology/pages/singin.dart';
import 'package:cology/themes/Custom_Themes/CustomStyle/button/primary_button.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class ForgitPasswordPage extends StatefulWidget {
  static const routeName = "/ForgitPasswordPage";
  late double screenWidth;
  ForgitPasswordPage({super.key});

  @override
  State<ForgitPasswordPage> createState() => _ForgitPasswordPageState();
}

class _ForgitPasswordPageState extends State<ForgitPasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _idRegstrion = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  bool _obscurePassword = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                "تعيين كلمة مرور جديدة",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: SizedBox(
                      width: widget.screenWidth * 0.75,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "اسم المستخدم أو رقم القيد",
                        ),
                        controller: _idRegstrion,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "يرجى إدخال اسم المستخدم أو رقم القيد";
                          }

                          var exists = Student.student
                              .any((item) => item.idRegstrion == value);

                          if (!exists) {
                            return "هذا الرقم غير موجود في النظام";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: SizedBox(
                      width: widget.screenWidth * 0.75,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "كلمة المرور الجديدة",
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        obscureText: _obscurePassword,
                        controller: _newPassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "يرجى إدخال كلمة المرور";
                          }
                          if (value.length <= 8) {
                            return "يجب أن تكون كلمة المرور 8 أحرف على الأقل";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: SizedBox(
                      width: widget.screenWidth * 0.75,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "تأكيد كلمة المرور",
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        obscureText: _obscurePassword,
                        controller: _confirmPassword,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "يرجى تأكيد كلمة المرور";
                          }
                          if (value != _newPassword.text) {
                            return "كلمة المرور غير متطابقة";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          var stu = Student.student.firstWhere(
                              (item) => item.idRegstrion == _idRegstrion.text);

                          stu.passWord = _newPassword.text;
                          if (stu.idRegstrion.isNotEmpty) {
                            CerntStudent.student.add(
                              CerntStudent(
                                idRegstrion: stu.idRegstrion,
                                name: stu.name,
                                stude: stu.stude,
                                typeAcsp: stu.typeAcsp,
                                level: stu.level,
                                smster: stu.smster,
                                number: stu.number,
                                email: stu.email,
                                passWord: stu.passWord,
                              ),
                            );
                          }

                          Navigator.pushReplacementNamed(
                            context,
                            CollegePage.routeName,
                          );
                        }
                      },
                      style:
                          CustomButton.primaryButtonStyle(widget.screenWidth),
                      child: Text(
                        "تسجيل الدخول",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      "تسجيل حساب جديد",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Singin.routeName);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: primary,
        height: 20,
      ),
    );
  }
}

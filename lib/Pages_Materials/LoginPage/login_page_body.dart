import 'package:cology/Model/cernt_student.dart';
import 'package:cology/Model/student.dart';
import 'package:cology/pages/college_page.dart';
import 'package:cology/pages/forgit_password.dart';
import 'package:cology/pages/singin.dart';
import 'package:cology/themes/Custom_Themes/CustomStyle/button/primary_button.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class LoginPageBody extends StatefulWidget {
  final double screenWidth;

  const LoginPageBody({super.key, required this.screenWidth});

  @override
  _LoginPageBodyState createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _idRegstrion = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,

          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: widget.screenWidth * 0.2,
                child: Icon(
                  Icons.login,
                  size: widget.screenWidth * 0.2,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "تسجيل الدخول",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "يرجى إدخال اسم المستخدم أو رقم القيد";
                          }
                          bool userExists = Student.student
                              .any((item) => item.idRegstrion == value);
                          if (!userExists) {
                            return "رقم القيد أو اسم المستخدم غير صحيح";
                          }
                          return null;
                        },
                        controller: _idRegstrion,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: SizedBox(
                      width: widget.screenWidth * 0.75,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "كلمة المرور",
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "يرجى إدخال كلمة المرور";
                          }
                          bool passwordCorrect = Student.student
                              .any((item) => item.passWord == value);
                          if (!passwordCorrect) {
                            return "رقم القيد أو اسم المستخدم غير صحيح";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Text(
                      "هل نسيت كلمة المرور؟",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgitPasswordPage(),
                          ));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          var stu = Student.student.firstWhere(
                              (item) => item.idRegstrion == _idRegstrion.text,
                              orElse: () => Student(
                                  idRegstrion: '',
                                  name: '',
                                  stude: '',
                                  typeAcsp: '',
                                  level: '',
                                  smster: '',
                                  number: '',
                                  email: '',
                                  passWord: ''));
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
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CollegePage(),
                              ),
                            );
                          }
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
                      Navigator.pushNamed(context, Singin.routeName,
                          arguments: "test_test");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomSheet: Container(
      //   color: primary,
      //   height: 20,
      // ),
    );
  }
}

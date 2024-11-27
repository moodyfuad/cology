import 'package:cology/Model/cernt_student.dart';
import 'package:cology/Model/student.dart';
import 'package:cology/pages/college_page.dart';
import 'package:cology/pages/login.dart';
import 'package:cology/pages/singin.dart';
import 'package:cology/themes/Custom_Themes/CustomStyle/button/primary_button.dart';
import 'package:cology/themes/Custom_Themes/text_theme.dart';
import 'package:flutter/material.dart';

class SigninPageBody extends StatefulWidget {
  const SigninPageBody({
    super.key,
    required this.screenWidth,
    required this.widget,
  });

  final double screenWidth;
  final Singin widget;

  @override
  State<SigninPageBody> createState() => _SigninPageBodyState();
}

class _SigninPageBodyState extends State<SigninPageBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _idRegstrion = TextEditingController();
  final TextEditingController _name = TextEditingController();
  String _stude = "";
  String _typeAcsp = "";
  String _level = "";
  String _smster = "";
  final TextEditingController _number = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: widget.screenWidth * 0.75,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "رقم القيد",
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color:
                                          const Color.fromARGB(80, 0, 0, 0))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "ادخل رقم القيد";
                            }
                            if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return "أرقام فقط";
                            }
                            if (value.length < 9) {
                              return "اقل شي عشرة ارقام";
                            }
                            return null;
                          },
                          controller: _idRegstrion,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "صورة البطاقة",
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color:
                                          const Color.fromARGB(80, 0, 0, 0))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "اسم الطالب",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                                color: const Color.fromARGB(80, 0, 0, 0))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "ادخل الاسم بشكل صحيح";
                      }
                      return null;
                    },
                    controller: _name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField(
                          hint: Text(
                            "التخصص",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.black45),
                          ),
                          items: stude,
                          onChanged: (i) {
                            _stude = i;
                          },
                          validator: (value) {
                            if (value == null) {
                              return "يرجى اختيار قيمة";
                            }
                            return null;
                          },
                          icon: const Icon(Icons.arrow_drop_down),
                          isExpanded: true,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: DropdownButtonFormField(
                          hint: Text(
                            "نوع القبول",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.black45),
                          ),
                          items: typeAcsp,
                          onChanged: (i) {
                            _typeAcsp = i;
                          },
                          validator: (value) {
                            if (value == null) {
                              return "يرجى اختيار قيمة";
                            }
                            return null;
                          },
                          icon: const Icon(Icons.arrow_drop_down),
                          isExpanded: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField(
                          hint: Text(
                            "المستوى",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.black45),
                          ),
                          items: level,
                          onChanged: (i) {
                            _level = i;
                          },
                          validator: (value) {
                            if (value == null) {
                              return "يرجى اختيار قيمة";
                            }
                            return null;
                          },
                          icon: const Icon(Icons.arrow_drop_down),
                          isExpanded: true,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: DropdownButtonFormField(
                          hint: Text(
                            "الترم",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.black45),
                          ),
                          items: smster,
                          onChanged: (i) {
                            _smster = i;
                          },
                          validator: (value) {
                            if (value == null) {
                              return "يرجى اختيار قيمة";
                            }
                            return null;
                          },
                          icon: const Icon(Icons.arrow_drop_down),
                          isExpanded: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "رقم الجوال",
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                                color: const Color.fromARGB(80, 0, 0, 0))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "ادخل الرقم الصحيح";
                      }
                      return null;
                    },
                    controller: _number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: const Color.fromARGB(80, 0, 0, 0)),
                      labelText: "البريد الالكتروني",
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.endsWith(".com") ||
                          !value.contains("@")) {
                        return "ادخال خطاء للبريد الالكتروني";
                      }
                      return null;
                    },
                    controller: _email,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "كلمة المرور",
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: const Color.fromARGB(80, 0, 0, 0)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length <= 7) {
                        return "يجب ان تكون كلمة المرور 8 او اكثر";
                      }
                      return null;
                    },
                    controller: _password,
                    obscureText: !_isPasswordVisible,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "تاكيد كلمة المرور",
                      labelStyle: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: const Color.fromARGB(80, 0, 0, 0)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isConfirmPasswordVisible =
                                !_isConfirmPasswordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value != _password.text) {
                        return "كلمة المرور لا تتطابق";
                      }
                      return null;
                    },
                    obscureText: !_isPasswordVisible,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Student newStudent = Student(
                        idRegstrion: _idRegstrion.text,
                        name: _name.text,
                        stude: _stude,
                        typeAcsp: _typeAcsp,
                        level: _level,
                        smster: _smster,
                        number: _number.text,
                        email: _email.text,
                        passWord: _password.text,
                      );
                      Student.student.add(newStudent);
                      if (newStudent.idRegstrion.isNotEmpty) {
                        CerntStudent.student.add(
                          CerntStudent(
                            idRegstrion: newStudent.idRegstrion,
                            name: newStudent.name,
                            stude: newStudent.stude,
                            typeAcsp: newStudent.typeAcsp,
                            level: newStudent.level,
                            smster: newStudent.smster,
                            number: newStudent.number,
                            email: newStudent.email,
                            passWord: newStudent.passWord,
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
                  style: CustomButton.primaryButtonStyle(widget.screenWidth),
                  child: Text("انشاء حساب",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Colors.white)),
                ),
                GestureDetector(
                  child: Text(
                    "لدي حساب",
                  ),
                  onTap: () {
                    Navigator.popAndPushNamed(context, Login.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

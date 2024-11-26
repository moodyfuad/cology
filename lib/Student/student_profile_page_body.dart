import 'package:cology/Model/cernt_student.dart';
import 'package:cology/Model/emp.dart';
import 'package:cology/Model/student.dart';
import 'package:cology/main.dart';
import 'package:cology/themes/Custom_Themes/CustomStyle/button/primary_button.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class StudentProfilePageBody extends StatelessWidget {
  const StudentProfilePageBody({
    super.key,
    required this.screenSize,
    required this.screenWidth,
  });

  final Size screenSize;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: primary,
        ),
        Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  color: Colors.white,
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 80,
                          child: Icon(
                            Icons.person,
                            size: 80,
                          ),
                        ),
                        Row(
                          
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue:
                                      CerntStudent.student[0].idRegstrion,
                                  decoration: const InputDecoration(
                                    labelText: "رقم القيد",
                                  ),
                                  readOnly: true,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue: "التخصص",
                                  decoration: InputDecoration(
                                    labelText: CerntStudent.student[0].stude,
                                  ),
                                  readOnly: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            initialValue: "الاسم",
                            decoration: InputDecoration(
                              labelText: CerntStudent.student[0].name,
                            ),
                            readOnly: true,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue: CerntStudent.student[0].number,
                                  decoration: const InputDecoration(
                                    labelText: "رقم الجوال",
                                  ),
                                  readOnly: true,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue:
                                      "الترم ${CerntStudent.student[0].smster}",
                                  decoration: const InputDecoration(
                                    labelText: "الترم",
                                  ),
                                  readOnly: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue: CerntStudent.student[0].number,
                                  decoration: const InputDecoration(
                                    labelText: "رقم الجوال",
                                  ),
                                  readOnly: true,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue: CerntStudent.student[0].email,
                                  decoration: const InputDecoration(
                                    labelText: "الايميل",
                                  ),
                                  readOnly: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue:
                                      CerntStudent.student[0].passWord,
                                  decoration: const InputDecoration(
                                    labelText: "كلمة المرور",
                                  ),
                                  obscureText: true,
                                  readOnly: true,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue:
                                      CerntStudent.student[0].passWord,
                                  decoration: const InputDecoration(
                                    labelText: "تاكيد كلمة المرور",
                                  ),
                                  readOnly: true,
                                  obscureText: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: ElevatedButton(
                            onPressed: () {
                              for (var item in showallMessages.show) {
                                var keysToRemove = item.chats.keys
                                    .where((key) => key != 1)
                                    .toList();

                                for (var key in keysToRemove) {
                                  item.chats.remove(key);
                                }
                              }

                              var stu = Student.student.firstWhere(
                                (item) =>
                                    item.idRegstrion ==
                                    CerntStudent.student[0].idRegstrion,
                              );
                              Student.student.remove(stu);
                              CerntStudent.student.clear();

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyHomePage(),
                                ),
                              );
                            },
                            style: CustomButton.primaryButtonStyle(screenWidth)
                                .copyWith(
                                    backgroundColor:
                                        const WidgetStatePropertyAll(
                                            Colors.red)),
                            child: Text(
                              "حذف الحساب",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:cology/CustomWidget/posts.dart';
import 'package:cology/Model/cernt_student.dart';
import 'package:flutter/material.dart';

class StudentBatchPageBody extends StatelessWidget {
  const StudentBatchPageBody({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    CerntStudent cerntStudent = CerntStudent.student[0];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${cerntStudent.stude} ${cerntStudent.typeAcsp} - ${cerntStudent.level}",style:  Theme.of(context).textTheme.titleSmall),
        ),
        Posts(screenWidth: screenWidth),
      ],
    );
  }
}

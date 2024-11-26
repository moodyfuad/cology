import 'package:cology/CustomWidget/posts.dart';
import 'package:flutter/material.dart';

class StudentCoursePageBody extends StatelessWidget {
  const StudentCoursePageBody({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("مادة قواعد البيانات"),
        ),
        Posts(screenWidth: screenWidth),
      ],
    );
  }
}

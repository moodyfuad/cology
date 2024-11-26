import 'package:cology/CustomWidget/courses.dart';
import 'package:flutter/material.dart';

class StudentInterestsPageBody extends StatelessWidget {
  const StudentInterestsPageBody({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Courses(screenWidth: screenWidth),
      ],
    );
  }
}

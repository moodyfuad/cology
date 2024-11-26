import 'package:cology/Student/student_app_bar.dart';
import 'package:cology/Student/student_bottom_sheet.dart';
import 'package:cology/Student/student_course_page_body.dart';
import 'package:cology/Student/student_drawer.dart';
import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  static const routeName = "/CoursePage";
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      endDrawer: const StudentDrawer(),
      appBar: const StudentAppBar(),
      bottomSheet: const StudentBottomSheet(),
      body: StudentCoursePageBody(screenWidth: screenWidth),
    );
  }
}

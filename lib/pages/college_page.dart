import 'package:cology/Student/student_app_bar.dart';
import 'package:cology/Student/student_bottom_sheet.dart';
import 'package:cology/Student/student_college_page_body.dart';
import 'package:cology/Student/student_drawer.dart';
import 'package:flutter/material.dart';

class CollegePage extends StatefulWidget {
  static const routeName = "/CollegePage";
  const CollegePage({super.key});

  @override
  State<CollegePage> createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      endDrawer: const StudentDrawer(),
      appBar: const StudentAppBar(),
      bottomNavigationBar: const StudentBottomSheet(pageName: CollegePage.routeName),
      body: StudentCollegePageBody(screenWidth: screenWidth),
    );
  }
}

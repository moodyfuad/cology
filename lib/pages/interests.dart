import 'package:cology/Student/student_app_bar.dart';
import 'package:cology/Student/student_bottom_sheet.dart';
import 'package:cology/Student/student_drawer.dart';
import 'package:cology/Student/student_interests_page_body.dart';
import 'package:flutter/material.dart';

class Interests extends StatefulWidget {
  static const routeName = "/Interests";
  const Interests({super.key});

  @override
  State<Interests> createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      endDrawer: const StudentDrawer(),
      appBar: const StudentAppBar(),
      bottomSheet: const StudentBottomSheet(),
      body: StudentInterestsPageBody(screenWidth: screenWidth),
    );
  }
}

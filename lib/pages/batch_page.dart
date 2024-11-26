import 'package:cology/Student/student_app_bar.dart';
import 'package:cology/Student/student_batch_page_body.dart';
import 'package:cology/Student/student_bottom_sheet.dart';
import 'package:cology/Student/student_drawer.dart';
import 'package:flutter/material.dart';

class BatchPage extends StatefulWidget {
  static const String routeName = "/BatchPage";
  const BatchPage({super.key});

  @override
  State<BatchPage> createState() => _BatchPageState();
}

class _BatchPageState extends State<BatchPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      endDrawer: const StudentDrawer(),
      appBar: const StudentAppBar(),
      bottomSheet: const StudentBottomSheet(),
      body: StudentBatchPageBody(screenWidth: screenWidth),
    );
  }
}

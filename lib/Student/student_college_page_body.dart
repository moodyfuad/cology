import 'package:cology/CustomWidget/horizontal_filter_boxes.dart';
import 'package:cology/CustomWidget/posts.dart';
import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class StudentCollegePageBody extends StatefulWidget {
  const StudentCollegePageBody({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  State<StudentCollegePageBody> createState() => _StudentCollegePageBodyState();
}

class _StudentCollegePageBodyState extends State<StudentCollegePageBody> {
      funDean(String name) =>
      setState(() {
        UserPosts.PostSelect(name);
      });
      funSF() =>
      setState(() {
        UserPosts.PostSelect("نائبة شؤون الطلاب");
      });
      funHA() =>
      setState(() {
        UserPosts.PostSelect("القبول والتسجيل");
      });
      funHD() =>
      setState(() {
        UserPosts.PostSelect("رئيس قسم");
      });
    
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HorizontalFilterBoxes(filterFunDen: funDean,),
        Posts(screenWidth: widget.screenWidth),
      ],
    );
  }
}

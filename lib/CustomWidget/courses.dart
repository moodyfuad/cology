import 'package:cology/CustomWidget/cours_rectangle.dart';
import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: ListView.builder(
          itemCount: UserPosts.selectedPost.length,
          itemBuilder: (context, index) {
            return CoursRectangle(screenWidth: screenWidth,index:index);
          },
        ),
      ),
    );
  }
}

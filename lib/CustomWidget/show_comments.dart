import 'package:cology/CustomWidget/comments_box.dart';
import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class ShowComments extends StatelessWidget {
  const ShowComments({
    super.key,
    required this.screenWidth, required this.postIndex,
  });

  final double screenWidth;
  final int postIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: UserPosts.users[postIndex].comments.length,
        itemBuilder: (context, index) {
          return CommentsBox(screenWidth: screenWidth, index: index, postIndex: postIndex,);
        },
      ),
    );
  }
}

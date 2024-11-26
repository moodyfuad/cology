import 'package:cology/CustomWidget/post_box.dart';
import 'package:cology/CustomWidget/send_comment.dart';
import 'package:cology/CustomWidget/show_comments.dart';
import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class PostCommentsBody extends StatefulWidget {
  const PostCommentsBody({
    super.key,
    required this.screenWidth,
    required this.postIndex,
  });

  final double screenWidth;
  final int postIndex;

  @override
  State<PostCommentsBody> createState() => _PostCommentsBodyState();
}

class _PostCommentsBodyState extends State<PostCommentsBody> {
  AddComment(String name, String postion, String comment, String time) {
    UserPosts.users[widget.postIndex].comments.add(
      {
        "Name": name,
        "Postion": postion,
        "Comment": comment,
        "CommentTime": time,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PostBox(
          screenWidth: widget.screenWidth,
          index: widget.postIndex,
        ),
        ShowComments(
            screenWidth: widget.screenWidth, postIndex: widget.postIndex),
        SendComment(
          screenWidth: widget.screenWidth,
          comment: AddComment,
          onSend: () {
            setState(() {});
          },
        ),
      ],
    );
  }
}

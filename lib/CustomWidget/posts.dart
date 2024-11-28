import 'package:cology/CustomWidget/post_box.dart';
import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    List<UserPosts> selected = UserPosts.selectedPost;

    return Expanded(
      child: ListView.builder(
        itemCount: selected.length,
        itemBuilder: (context, index) {
          return PostBox(
            screenWidth: widget.screenWidth,
            index: index,
          );
        },
      ),
    );
  }
}

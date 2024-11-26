import 'package:cology/Pages_Materials/PostCommentsPage/post_comment_app_bar.dart';
import 'package:cology/Pages_Materials/PostCommentsPage/post_comments_body.dart';
import 'package:flutter/material.dart';

class PostComments extends StatefulWidget {
  static const routeName = "/PostComments";
  final int index;

  const PostComments({
    super.key,
    required this.index,

  });

  @override
  State<PostComments> createState() => _PostCommentsState(index: index);
}

class _PostCommentsState extends State<PostComments> {
  final int index;

  _PostCommentsState({required this.index});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      appBar: const PostCommentAppBar(),
      body: PostCommentsBody(
        screenWidth: screenWidth,
        postIndex: index,
      ),
    );
  }
}

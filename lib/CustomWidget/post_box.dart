import 'package:cology/Model/emp.dart';
import 'package:cology/pages/post_comments.dart';
import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  const PostBox({
    super.key,
    required this.screenWidth,
    required this.index,
  });

  final double screenWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    List<UserPosts> selected = UserPosts.selectedPost;

    return SizedBox(
      width: screenWidth,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(2),
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black45,
                  width: 1.0,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              width: screenWidth * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                        "${selected[index].name} - ${selected[index].degre}",
                        style: Theme.of(context).textTheme.bodyLarge),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.black45,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(selected[index].post,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(selected[index].postTime,
                            style: Theme.of(context).textTheme.labelLarge),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.black45,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PostComments.routeName,arguments: index);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("التعليقات",
                              style: Theme.of(context).textTheme.bodyMedium),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            radius: 10,
                            child: Text(
                              (UserPosts.selectedPost[index].comments.length >
                                      UserPosts.users[index].comments.length)
                                  ? "${selected[index].comments.length}"
                                  : "${UserPosts.users[index].comments.length}",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

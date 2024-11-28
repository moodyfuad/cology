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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: .5,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              width: screenWidth * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: CircleAvatar(
                          backgroundColor: Colors.black38,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "${selected[index].degre}/${selected[index].name}",
                            style: Theme.of(context).textTheme.headlineSmall),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 50, left: 10, bottom: 10, top: 0),
                    child: Text(selected[index].post,
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          selected[index].postTime,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PostComments.routeName,
                          arguments: index);
                    },
                    child: Container(
                      color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 25.0, top: 10, bottom: 10),
                            child: Text(
                              (UserPosts.selectedPost[index].comments.length >
                                      UserPosts.users[index].comments.length)
                                  ? "${selected[index].comments.length}"
                                  : "${UserPosts.users[index].comments.length}",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 10.0, top: 10, bottom: 12),
                            child: Text("من التعليقات",
                                style: Theme.of(context).textTheme.bodyLarge),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

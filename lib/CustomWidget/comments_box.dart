import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class CommentsBox extends StatelessWidget {
  const CommentsBox({
    super.key,
    required this.screenWidth,
    required this.index,
    required this.postIndex,
  });

  final double screenWidth;
  final int index;
  final int postIndex;

  @override
  Widget build(BuildContext context) {
    var mapComments = UserPosts.users[postIndex].comments;

    return SizedBox(
      width: screenWidth,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                child: CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black45,
                    width: .4,
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
                        "${mapComments.elementAt(index)["Postion"]}/ ${mapComments.elementAt(index)["Name"]}",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    Container(
                      height: .3,
                      width: 100,
                      color: Colors.black45,
                      alignment: Alignment.centerRight,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        mapComments.elementAt(index)["Comment"]!,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${mapComments.elementAt(index)["CommentTime"]}",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

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
                        "${mapComments.elementAt(index)["Name"]} - ${mapComments.elementAt(index)["Postion"]}",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.black45,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        mapComments.elementAt(index)["Comment"]!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${mapComments.elementAt(index)["CommentTime"]}",
                            style: Theme.of(context).textTheme.labelLarge,
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

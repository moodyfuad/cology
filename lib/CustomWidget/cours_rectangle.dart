import 'package:cology/Model/emp.dart';
import 'package:cology/pages/coursePage.dart';
import 'package:flutter/material.dart';

class CoursRectangle extends StatelessWidget {
  const CoursRectangle({
    super.key,
    required this.screenWidth,
    required this.index,
  });

  final double screenWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        UserPosts.postCours(UserPosts.selectedPost[index].name);
        Navigator.pushNamed(context, Course.routeName);
      },
      child: SizedBox(
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black45,
                width: 1.0,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            width: screenWidth * 0.8,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          UserPosts.selectedPost[index].cours,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(
                          UserPosts.selectedPost[index].name,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "8:40pm",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 10,
                          child: Text(
                            "",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

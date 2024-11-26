import 'package:cology/CustomWidget/display_all_messages_rectangles.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class StudentMessagesPageBody extends StatelessWidget {
  const StudentMessagesPageBody({
    super.key,
    required this.screenSize,
    required this.screenWidth,
  });

  final Size screenSize;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.height,
          width: screenWidth,
          color: primary,
        ),
        Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 70, top: 20),
                    child: DisplayAllMessagesRectangles(screenWidth: screenWidth),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

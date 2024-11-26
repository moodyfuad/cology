import 'package:cology/CustomWidget/message_information_rectangle.dart';
import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class DisplayAllMessagesRectangles extends StatelessWidget {
  const DisplayAllMessagesRectangles({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: showallMessages.show.length,
      itemBuilder: (context, index) {
        return MessageInformationRectangle(screenWidth: screenWidth,index: index,);
      },
    );
  }
}

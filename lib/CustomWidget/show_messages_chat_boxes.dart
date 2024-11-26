import 'package:cology/CustomWidget/message_chat_box.dart';
import 'package:cology/Model/emp.dart';
import 'package:flutter/material.dart';

class ShowMessagesChatBoxes extends StatelessWidget {
  const ShowMessagesChatBoxes(
      {super.key, required this.screenWidth, required this.personIndex});

  final double screenWidth;
  final int personIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: showallMessages.show[personIndex].chats.length,
        itemBuilder: (context, index) {
          return MessageChatBox(
            screenWidth: screenWidth,
            index: index,
            personIndex: personIndex,
          );
        },
      ),
    );
  }
}

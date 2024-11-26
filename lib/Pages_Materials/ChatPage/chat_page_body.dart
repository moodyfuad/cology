import 'package:cology/CustomWidget/send_messages.dart';
import 'package:cology/CustomWidget/show_messages_chat_boxes.dart';
import 'package:flutter/material.dart';

class ChatPageBody extends StatefulWidget {
  const ChatPageBody({
    super.key,
    required this.screenWidth,
    required this.screenSize,
    required this.index,
  });

  final double screenWidth;
  final Size screenSize;
  final int index;

  @override
  State<ChatPageBody> createState() => _ChatPageBodyState();
}

class _ChatPageBodyState extends State<ChatPageBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ShowMessagesChatBoxes(
              screenWidth: widget.screenWidth, personIndex: widget.index),
          SendMessages(
            screenSize: widget.screenSize,
            personIndex: widget.index,
            onMessageSent: () {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

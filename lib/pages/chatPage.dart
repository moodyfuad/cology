import 'package:cology/Pages_Materials/ChatPage/chat_page_app_bar.dart';
import 'package:cology/Pages_Materials/ChatPage/chat_page_body.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  static const String routeName = "/ChatPage";
  const Chat({super.key, required this.index});

  final int index;

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Scaffold(
      appBar: ChatPageAppBar(index: widget.index),
      body: ChatPageBody(screenWidth: screenWidth, screenSize: screenSize, index: widget.index),
    );
  }
}

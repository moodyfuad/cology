import 'package:cology/Pages_Materials/MessagesPage/messages_page_app_bar.dart';
import 'package:cology/CustomWidget/custom_floating_action_location.dart';
import 'package:cology/Student/student_bottom_sheet.dart';
import 'package:cology/Student/student_messages_page_body.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  static const routeName = "/Messages";
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      appBar: const MessagesPageAppBar(),
      bottomNavigationBar: const StudentBottomSheet(pageName: Messages.routeName,),
      body: StudentMessagesPageBody(
          screenSize: screenSize, screenWidth: screenWidth),
      floatingActionButtonLocation: CustomFloatingActionLocation(),
    );
  }
}

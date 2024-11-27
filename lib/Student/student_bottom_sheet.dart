import 'package:cology/CustomWidget/bottom_sheet_page_button.dart';

import 'package:cology/pages/batch_page.dart';
import 'package:cology/pages/college_page.dart';
import 'package:cology/pages/interests.dart';
import 'package:cology/pages/messages.dart';
import 'package:flutter/material.dart';

class StudentBottomSheet extends StatefulWidget {
  final String? pageName;

  const StudentBottomSheet({
    required this.pageName,
    super.key,
  });

  @override
  State<StudentBottomSheet> createState() => _StudentBottomSheetState();
}

class _StudentBottomSheetState extends State<StudentBottomSheet> {
  late String? selectedBtnRouteName;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0),
            blurRadius: 7,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomSheetPageButton(
            selected: widget.pageName == CollegePage.routeName,
            pageName: Names.college_page,
            classPage: const CollegePage(),
            context: context,
            iconPage: Icons.home_outlined,
          ),
          BottomSheetPageButton(
            selected: widget.pageName == BatchPage.routeName,
            pageName: Names.batch_page,
            classPage: const BatchPage(),
            context: context,
            iconPage: Icons.people_alt_outlined,
          ),
          BottomSheetPageButton(
            selected: widget.pageName == Interests.routeName,
            pageName: Names.interests_page,
            classPage: const Interests(),
            context: context,
            iconPage: Icons.menu_book_rounded,
          ),
          BottomSheetPageButton(
            selected: widget.pageName == Messages.routeName,
            pageName: Names.messages_page,
            classPage: const Messages(),
            context: context,
            iconPage: Icons.message_outlined,
          ),
        ],
      ),
    );
  }
}

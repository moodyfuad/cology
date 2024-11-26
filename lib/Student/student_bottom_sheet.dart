import 'package:cology/CustomWidget/bottom_sheet_page_button.dart';

import 'package:cology/pages/batch_page.dart';
import 'package:cology/pages/college_page.dart';
import 'package:cology/pages/interests.dart';
import 'package:cology/pages/messages.dart';
import 'package:flutter/material.dart';

class StudentBottomSheet extends StatelessWidget {
  const StudentBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0),
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomSheetPageButton(pageName: Names.college_page, classPage: const CollegePage(), context: context,iconPage: Icons.home_outlined,),
          BottomSheetPageButton(pageName: Names.batch_page, classPage: const BatchPage(), context: context,iconPage: Icons.people_alt_outlined,),
          BottomSheetPageButton(pageName: Names.interests_page ,classPage: const Interests(),context: context,iconPage: Icons.menu_book_rounded,),
          BottomSheetPageButton(pageName: Names.messages_page, classPage: const Messages(), context: context,iconPage: Icons.message_outlined,),
        ],
      ),
    );
  }
}

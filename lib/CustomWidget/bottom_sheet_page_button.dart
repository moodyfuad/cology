import 'package:cology/Model/emp.dart';
import 'package:cology/pages/batch_page.dart';
import 'package:cology/pages/college_page.dart';
import 'package:cology/pages/interests.dart';
import 'package:cology/pages/messages.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class BottomSheetPageButton extends StatelessWidget {
  const BottomSheetPageButton({
    super.key,
    required this.selected,
    required this.pageName,
    required this.classPage,
    required this.context,
    required this.iconPage,
  });

  final String pageName;
  final Widget classPage;
  final IconData iconPage;
  final BuildContext context;

  final bool selected;

  bool isCurrentRoute(BuildContext context, String routeName) {
    String? rout = ModalRoute.of(this.context)?.settings.name;
    return rout == routeName;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            UserPosts.postPageSelect(pageName);
            if (pageName == Names.college_page) {
              Navigator.popAndPushNamed(context, CollegePage.routeName);
            } else if (pageName == Names.batch_page) {
              Navigator.popAndPushNamed(context, BatchPage.routeName);
            } else if (pageName == Names.interests_page) {
              Navigator.popAndPushNamed(context, Interests.routeName);
            } else if (pageName == Names.messages_page) {
              Navigator.popAndPushNamed(context, Messages.routeName);
            }
          },
          icon: Icon(
            iconPage,
            color: selected ? primary : Colors.black,
            size: selected ? 40 : 30,

            //size: isCurrentRoute(context, CollegePage.routeName) ? 25 : 23,
          ),
        ),
        Text(pageName,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: selected ? Colors.blue : Colors.black,
                  fontSize: selected ? 18 : 14,
                ))
      ],
    );
  }
}

class Names {
  static const String college_page = 'صفحة الكلية';
  static const String batch_page = 'صفحة الدفعة';
  static const String interests_page = 'الاهتمامات';
  static const String messages_page = 'الرسائل';
}

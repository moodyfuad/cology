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
    required this.pageName,
    required this.classPage,
    required this.context,
    required this.iconPage,
  });

  final String pageName;
  final Widget classPage;
  final IconData iconPage;
  final BuildContext context;

  bool isCurrentRoute(BuildContext context, String routeName) {
    return ModalRoute.of(context)?.settings.name == routeName;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          color: isCurrentRoute(context, CollegePage.routeName) ? primary : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                UserPosts.postPageSelect(pageName);
                if(pageName == Names.college_page){
                  Navigator.popAndPushNamed(context, CollegePage.routeName);
                }else if(pageName == Names.batch_page){
                  Navigator.popAndPushNamed(context, BatchPage.routeName);
                }else if(pageName == Names.interests_page){
                  Navigator.popAndPushNamed(context, Interests.routeName);
                }else if(pageName == Names.messages_page){
                  Navigator.popAndPushNamed(context, Messages.routeName);
                }
              },
              icon: Icon(
                iconPage,
                color:
                    isCurrentRoute(context, CollegePage.routeName) ? primary : Colors.black,
                    size: isCurrentRoute(context, CollegePage.routeName) ? 25 : 23,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
              child: Text(pageName,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: isCurrentRoute(context, "")
                            ? Colors.white
                            : Colors.black,
                      )),
            )
          ],
        ),
      ),
    );
  }
}


class Names {
  static const String college_page = 'صفحة الكلية';
  static const String batch_page = 'صفحة الدفعة';
  static const String interests_page = 'الاهتمامات';
  static const String messages_page = 'الرسائل';

}
import 'package:cology/CustomWidget/title_page_text.dart';
import 'package:cology/pages/college_page.dart';
import 'package:flutter/material.dart';

class PostCommentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PostCommentAppBar({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitlePageText(title: "التعليقات"),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    CollegePage.routeName
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(60);
}

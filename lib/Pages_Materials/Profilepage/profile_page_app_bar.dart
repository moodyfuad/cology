import 'package:cology/CustomWidget/title_page_text.dart';
import 'package:flutter/material.dart';

class ProfilePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfilePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Expanded(child: TitlePageText(title: "الملف الشخصي")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.forward),
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

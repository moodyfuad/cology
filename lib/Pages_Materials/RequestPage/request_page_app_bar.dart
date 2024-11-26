import 'package:cology/CustomWidget/title_page_text.dart';
import 'package:flutter/material.dart';

class RequestPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RequestPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: TitlePageText(title: "رفع طلب"),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

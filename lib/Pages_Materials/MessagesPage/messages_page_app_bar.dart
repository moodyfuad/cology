import 'package:cology/CustomWidget/title_page_text.dart';
import 'package:flutter/material.dart';

class MessagesPageAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MessagesPageAppBar({
    super.key,
  });

  @override
  State<MessagesPageAppBar> createState() => _MessagesPageAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _MessagesPageAppBarState extends State<MessagesPageAppBar> {
  bool fisbalSaerhs = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {
              setState(() {
                fisbalSaerhs = !fisbalSaerhs;
              });
            },
          ),
        ),
      ),
      title: fisbalSaerhs
          ? const Align(
              alignment: Alignment(0.05, 0),
              child: Padding(
                padding: EdgeInsets.all(3.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Padding(
                        padding: EdgeInsets.all(.0),
                        child: TextField(
                          autofocus: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          : const Align(
              alignment: Alignment(0.05, 0),
              child: TitlePageText(title: "الرسائل",),
            ),
    );
  }
}

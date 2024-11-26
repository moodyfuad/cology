import 'package:cology/Model/emp.dart';
import 'package:cology/pages/messages.dart';
import 'package:flutter/material.dart';

class ChatPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatPageAppBar({
    super.key, required this.index,
  });
final int index;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),
                Text(
                  showallMessages.show[index].name,
                  style:  Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white)
                )
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, Messages.routeName, ModalRoute.withName(Messages.routeName));
            },
          ),
        ],
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(60);
}

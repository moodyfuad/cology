import 'package:cology/Model/emp.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class MessageChatBox extends StatelessWidget {
  const MessageChatBox(
      {super.key, required this.screenWidth, required this.index, required this.personIndex});

  final int index;
  final double screenWidth;
  final int personIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Align(
        alignment:
            (showallMessages.show[personIndex].chats.keys.elementAt(index) == 1) ? Alignment.centerLeft : Alignment.centerRight,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: screenWidth * 0.5,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: (showallMessages.show[personIndex].chats.keys.elementAt(index) == 1) ? Colors.white : primary,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black45),
            ),
            child: Column(
              crossAxisAlignment: (showallMessages.show[personIndex].chats.keys.elementAt(index) == 1)
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    showallMessages.show[personIndex].chats.values.elementAt(index),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: (showallMessages.show[personIndex].chats.keys.elementAt(index) == 1) ? Colors.black : Colors.white,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "8:45PM",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: (showallMessages.show[personIndex].chats.keys.elementAt(index) == 1) ? Colors.black : Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

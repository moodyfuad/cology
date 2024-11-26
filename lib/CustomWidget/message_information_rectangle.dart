import 'package:cology/Model/emp.dart';
import 'package:cology/pages/chatPage.dart';
import 'package:flutter/material.dart';

class MessageInformationRectangle extends StatelessWidget {
  const MessageInformationRectangle({
    super.key,
    required this.screenWidth,
    required this.index,
  });

  final double screenWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          Chat.routeName,
          arguments: index
        );
      },
      child: SizedBox(
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            width: screenWidth * 0.8,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              showallMessages.show[index].name,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(
                              showallMessages.show[index].position,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "8:40pm",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 10,
                          child: Text(
                            "${showallMessages.show[index].chats.length}",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
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

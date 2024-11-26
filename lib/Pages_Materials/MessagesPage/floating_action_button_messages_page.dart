import 'package:cology/pages/request.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonMessagesPage extends StatelessWidget {
  const FloatingActionButtonMessagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Request(),
          ),
        );
      },
      child: const Icon(
        Icons.upload,
      ),
    );
  }
}

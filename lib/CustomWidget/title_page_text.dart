import 'package:flutter/material.dart';

class TitlePageText extends StatelessWidget {

  final String title;

  const TitlePageText({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white) ,
    );
  }
}
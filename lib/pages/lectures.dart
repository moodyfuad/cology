import 'package:cology/Pages_Materials/LecturesPage/lectures_page_app_bar.dart';
import 'package:cology/Pages_Materials/LecturesPage/lectures_page_body.dart';
import 'package:flutter/material.dart';

class Lectures extends StatelessWidget {
  static const String routeName = "/Lectures";
  const Lectures({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LecturesPageAppBar(),
      body: LecturesPageBody(),
    );
  }
}

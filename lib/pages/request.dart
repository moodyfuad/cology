import 'package:cology/Pages_Materials/RequestPage/request_page_app_bar.dart';
import 'package:cology/Pages_Materials/RequestPage/request_page_body.dart';

import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  static const routeName = "/Request";
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      appBar: const RequestPageAppBar(),
      body: RequestPageBody(screenSize: screenSize, screenWidth: screenWidth),
    );
  }
}

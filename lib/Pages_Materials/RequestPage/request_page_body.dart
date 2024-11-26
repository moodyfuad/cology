import 'package:cology/CustomWidget/request_form.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class RequestPageBody extends StatelessWidget {
  const RequestPageBody({
    super.key,
    required this.screenSize,
    required this.screenWidth,
  });

  final Size screenSize;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.height,
          width: screenWidth,
          color: primary,
        ),
        Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: RequestForm(screenWidth: screenWidth),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

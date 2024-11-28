import 'package:cology/pages/singin.dart';
import 'package:cology/themes/Custom_Themes/CustomStyle/button/primary_button.dart';
import 'package:flutter/material.dart';

class RequestForm extends StatelessWidget {
  const RequestForm({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 100, left: 50.0, right: 50, bottom: 10),
              child: SizedBox(
                width: screenWidth * 0.75,
                child: DropdownButtonFormField(
                  hint: const Align(
                    alignment: Alignment.centerRight,
                    child: Text("مستقبل الطلب"),
                  ),
                  items: level,
                  onChanged: (i) {},
                  icon: const Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.arrow_drop_down),
                  ),
                  isExpanded: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 50.0, right: 50, bottom: 10),
              child: SizedBox(
                width: screenWidth * 0.75,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "عنوان الطلب",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 50.0, right: 50, bottom: 10),
              child: SizedBox(
                width: screenWidth * 0.75,
                child: TextFormField(
                  maxLines: 6,
                  textAlign: TextAlign.start,
                  decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    labelText: "محتوى الطلب",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 50.0, right: 50, bottom: 10),
              child: ElevatedButton(
                onPressed: () {},
                style: CustomButton.primaryButtonStyle(screenWidth),
                child: const Text("رفع الطلب"),
              ),
            ),
            Text(
              "عدد الطلبات المسموح بها اليوم : 2",
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

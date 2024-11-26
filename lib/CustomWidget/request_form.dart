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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
              padding: const EdgeInsets.all(8.0),
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
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: screenWidth * 0.75,
                child: TextFormField(
                  maxLines: 6,
                  decoration: const InputDecoration(
                    labelText: "محتوى الطلب",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {},
                style: CustomButton.primaryButtonStyle(screenWidth),
                child: const Text("رفع الطلب"),
              ),
            ),
            Text("عدد الطلبات المسموح بها اليوم : 2",style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}

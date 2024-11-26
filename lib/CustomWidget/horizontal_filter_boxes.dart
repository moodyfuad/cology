import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class HorizontalFilterBoxes extends StatefulWidget {
  final Function(String) filterFunDen;

  const HorizontalFilterBoxes({
    super.key,
    required this.filterFunDen,
  });

  @override
  State<HorizontalFilterBoxes> createState() => _HorizontalFilterBoxesState();
}

class _HorizontalFilterBoxesState extends State<HorizontalFilterBoxes> {
  final items = [
    'الكل',
    'رئيس القسم',
    'القبول والتسجيل',
    'نيابة شوون الطلاب',
    'العميد',
  ];

  // مؤشر لتحديد العنصر النشط
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                widget.filterFunDen(items[index]);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedIndex == index ? primary : Colors.white,
                  border: Border.all(
                    color: primary,
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Text(
                    items[index],
                    style: TextStyle(
                      color: selectedIndex == index ? Colors.white : primary,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

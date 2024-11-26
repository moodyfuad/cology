import 'package:cology/Model/cernt_student.dart';
import 'package:flutter/material.dart';

class StudentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StudentAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(16),
        ),
        child: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                CerntStudent.student[0].name,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
              ),
              Text(
                CerntStudent.student[0].idRegstrion,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

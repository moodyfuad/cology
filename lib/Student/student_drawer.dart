import 'package:cology/Model/cernt_student.dart';
import 'package:cology/main.dart';
import 'package:cology/pages/lectures.dart';
import 'package:cology/pages/profile.dart';
import 'package:cology/pages/request.dart';
import 'package:cology/themes/lyout.dart';
import 'package:flutter/material.dart';

class StudentDrawer extends StatelessWidget {
  const StudentDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: primary),
            accountName: Text(
              CerntStudent.student[0].name,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
            accountEmail: Text(
              CerntStudent.student[0].idRegstrion,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
            currentAccountPicture: const CircleAvatar(
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),
          ),
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            leading: const Icon(Icons.person),
            title: Text(
              'الملف الشخصي',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {
              Navigator.pushNamed(context, Profile.routeName);
            },
          ),
          ListTile(
              leading: const Icon(Icons.upload_file),
              title: Text(
                'رفع طلب',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              onTap: () {
                Navigator.pushNamed(context, Request.routeName);
              }),
          ListTile(
            leading: const Icon(Icons.schedule),
            title: Text(
              'جدول المحاضرات',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {
              Navigator.pushNamed(context, Lectures.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.developer_mode),
            title: Text(
              'المطورين',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              'الإعدادات',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {},
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
            ),
            title: Text(
              'تسجيل الخروج',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {
              CerntStudent.student.clear();
              Navigator.pushNamedAndRemoveUntil(context, MyHomePage.routeName,
                  ModalRoute.withName(MyHomePage.routeName));
            },
          ),
        ],
      ),
    );
  }
}

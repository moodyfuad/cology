import 'package:cology/Pages_Materials/Profilepage/profile_page_app_bar.dart';
import 'package:cology/Student/student_profile_page_body.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = "/Profile";
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      appBar: const ProfilePageAppBar(),
      body: StudentProfilePageBody(screenSize: screenSize, screenWidth: screenWidth),
    );
  }
}

import 'package:flutter/material.dart';

import '../shared/appstyle.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile Page",
          style: appStyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}

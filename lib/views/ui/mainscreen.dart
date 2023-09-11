// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_shop/controllers/mainscreen_provider.dart';
import 'package:e_shop/views/shared/appstyle.dart';
import 'package:e_shop/views/ui/cartpage.dart';
import 'package:e_shop/views/ui/homepage.dart';
import 'package:e_shop/views/ui/profile.dart';
import 'package:e_shop/views/ui/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

import '../bottom_nav.dart';
import '../shared/bottom_nav_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: BottomNavBar(),
      );
    });
  }
}

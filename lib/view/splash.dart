import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oneproject/view/drawerplushome.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), (() {
      Get.off(DrawerwithHomepage());
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue,
        child: Center(
          child: Text(
            'welcome',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      )),
    );
  }
}

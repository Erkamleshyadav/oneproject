import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oneproject/view/drawerplushome.dart';
import 'package:oneproject/view/page_name.dart';
import 'package:oneproject/view/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: PageNames.splash,
      getPages: MyRouts.list,
    );
  }
}

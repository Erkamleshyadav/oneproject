import 'package:flutter/material.dart';
import 'package:oneproject/view/loginpage.dart';

class Teachersdashboard extends StatelessWidget {
  const Teachersdashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Teachers Dashboard',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
        ),
      ),
      body: Container(),
    );
  }
}

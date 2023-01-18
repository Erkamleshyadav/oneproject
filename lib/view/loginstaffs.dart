import 'package:flutter/material.dart';
import 'package:oneproject/view/loginpage.dart';

class Staffdashboard extends StatelessWidget {
  const Staffdashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Staffs Login',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
        ),
      ),
      body: Loginpage(),
    );
  }
}

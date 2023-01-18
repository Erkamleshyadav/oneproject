import 'package:flutter/material.dart';

class Servicesdashboard extends StatelessWidget {
  const Servicesdashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Services Dashboard',
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

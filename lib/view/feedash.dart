import 'package:flutter/material.dart';

class FeeDashboard extends StatelessWidget {
  const FeeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fee Dashboard',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
        ),
      ),
    );
  }
}

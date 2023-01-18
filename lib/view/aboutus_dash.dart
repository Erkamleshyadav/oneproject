import 'package:flutter/material.dart';

class AboutUsDashboard extends StatelessWidget {
  const AboutUsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Aboutus Dashboard',
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

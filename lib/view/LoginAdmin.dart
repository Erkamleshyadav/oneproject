import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oneproject/view/loginpage.dart';
import 'package:oneproject/view/page_name.dart';

class AdminLoginPage extends StatefulWidget {
  AdminLoginPage({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  int _bottom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Admin Login Page',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: 'Favourite'),
        ],
        currentIndex: _bottom,
        onTap: ((value) {
          _bottom = value;
          setState(() {});
        }),
      ),
      body: Loginpage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oneproject/view/constraints.dart';

class AdminDeskpanel extends StatelessWidget {
  const AdminDeskpanel({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundColor: Colors.amber,
          ),
          centerTitle: true,
          title: Text(
            'Admin Deskboard',
            style: fontstyle,
          ),
        ),
      ),
    );
  }
}

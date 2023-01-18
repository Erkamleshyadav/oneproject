import 'package:flutter/material.dart';
import 'package:oneproject/view/constraints.dart';

class TeachersDeskpanel extends StatelessWidget {
  const TeachersDeskpanel({super.key});

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
            'Teachers Deskpanel',
            style: fontstyle,
          ),
        ),
      ),
    );
  }
}

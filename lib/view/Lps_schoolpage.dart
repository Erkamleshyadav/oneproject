import 'dart:ui';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneproject/view/Dasboards.dart';
import 'package:oneproject/view/Lps_homepage.dart';

class NewScreen extends StatelessWidget {
  NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('LPS School'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Mr.Kamlesh',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 5,
              ),
              ListTile(
                dense: true,
                onTap: () {
                  Get.to(AdminDashboard());
                },
                iconColor: Colors.deepOrange,
                leading: Icon(Icons.admin_panel_settings),
                title: Text('Admin'),
                subtitle: Text('email'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 5,
              ),
              ListTile(
                dense: true,
                onTap: () {
                  Get.to(Teachersdashboard());
                },
                iconColor: Colors.deepOrange,
                leading: Icon(Icons.person_add),
                title: Text('Teaches Log'),
                subtitle: Text('email'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 5,
              ),
              ListTile(
                dense: true,
                onTap: () {
                  Get.to(Staffdashboard());
                },
                iconColor: Colors.deepOrange,
                leading: Icon(Icons.group_add),
                title: Text('Staff members'),
                subtitle: Text('email'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 5,
              ),
              ListTile(
                dense: true,
                onTap: () {
                  Get.to(Servicesdashboard());
                },
                iconColor: Colors.deepOrange,
                leading: Icon(Icons.design_services),
                title: Text('Services'),
                subtitle: Text('Bus/Van/Rikshaw/other'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                height: 5,
              ),
              ListTile(
                dense: true,
                onTap: () {
                  Get.to(FeeDashboard());
                },
                iconColor: Colors.deepOrange,
                leading: Icon(Icons.currency_rupee),
                title: Text('Fee Structures'),
                subtitle: Text('Payment summary'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              InkWell(
                onTap: () {
                  Get.defaultDialog(
                      title: 'Privacy',
                      content: Text(
                        '''“Find meaning.
                   Distinguish melancholy from sadness.
                    Go out for a walk.
                     It doesn’t have to be a romantic walk in the park, 
                     spring at its most spectacular moment,
                      flowers and smells and outstanding poetical imagery smoothly
                       transferring you into another world. 
                       It doesn’t have to be a walk during which you’ll have
                        multiple life epiphanies and discover meanings no other brain
                         ever managed to encounter.
                          Do not be afraid of spending quality time by yourself.
                           Find meaning or don’t find meaning but 'steal' some time 
                           and give it freely and exclusively to your own self. 
                           Opt for privacy and solitude.
                            That doesn’t make you antisocial or cause you to reject the rest of the world.
                             But you need to breathe. And you need to be.”''',
                        style: TextStyle(fontSize: 10),
                      ),
                      onCancel: () {});
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'Privacy',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(20),
                  height: 50,
                ),
              ),
              Container(
                child: Center(
                    child: Text('Contacts Us',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow))),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(20),
                height: 50,
              ),
              Container(
                child: Center(
                    child: Text('Terms and conditions',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(20),
                height: 50,
              ),
            ],
          ),
        ),
        body: SecondScreen(),
        // drawer started...
      ),
    );
  }
}

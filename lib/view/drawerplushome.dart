import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneproject/view/LoginAdmin.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'constraints.dart';

class DrawerwithHomepage extends StatefulWidget {
  DrawerwithHomepage({super.key});

  @override
  State<DrawerwithHomepage> createState() => _DrawerwithHomepageState();
}

class _DrawerwithHomepageState extends State<DrawerwithHomepage> {
  List<String> countryList = [
    'https://image.pngaaa.com/956/4051956-middle.png',
    'https://i.pinimg.com/originals/d9/7c/c8/d97cc849182100bc78652a1cf44ddcc8.jpg',
    'https://toppng.com/uploads/preview/security-guarding-new-team-member-logo-11563228629jqdsl5he48.png',
    'https://www.kindpng.com/picc/m/593-5932713_services-offered-social-welfare-logo-png-transparent-png.png',
    'https://e7.pngegg.com/pngimages/704/918/png-clipart-fee-price-cost-service-tax-others-miscellaneous-blue.png'
  ];

  double _currentpage = 0;
  int _currentpostion = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentpostion,
          onTap: (value) {
            _currentpostion = value;
            setState(() {});
          },
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Phone'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
          ],
        ),
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
        body: Container(
          child: Column(
            children: [
              CarouselSlider(
                items: countryList.map((e) {
                  return Card(
                    child: Image.network(
                      e.trim().toString(),
                      fit: BoxFit.fill,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlayInterval: Duration(milliseconds: 1000),
                  enlargeFactor: 0.8,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  autoPlay: true,
                  height: 100,
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 500,
                // color: Colors.amberAccent,
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 2.0,
                  padding: EdgeInsets.all(10),
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Admin',
                            style: fontstyle,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Teachers',
                            style: fontstyle,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Staffs',
                            style: fontstyle,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Fee structures',
                            style: fontstyle,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'Services',
                            style: fontstyle,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'About us',
                            style: fontstyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // drawer started...
      ),
    );
  }
}

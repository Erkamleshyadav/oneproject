import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oneproject/view/Dasboards.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:oneproject/view/constraints.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
    return Scaffold(
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
                    onTap: () {
                      Get.to(AdminDashboard());
                    },
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
                    onTap: () {
                      Get.to(Teachersdashboard());
                    },
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
                    onTap: () {
                      Get.to(Staffdashboard());
                    },
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
                    onTap: () {
                      Get.to(FeeDashboard());
                    },
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
                    onTap: () {
                      Get.to(Servicesdashboard());
                    },
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
                    onTap: () {
                      Get.to(AboutUsDashboard());
                    },
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
    );
  }
}

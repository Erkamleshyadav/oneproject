import 'package:get/get_navigation/get_navigation.dart';
import 'package:oneproject/view/Dasboards.dart';
import 'package:oneproject/view/AdminLoginpage.dart';
import 'package:oneproject/view/Lps_homepage.dart';
import 'package:oneproject/view/Lps_schoolpage.dart';
import 'package:oneproject/view/Teachersloginpage.dart';
import 'package:oneproject/view/admindashboard.dart';

import 'package:oneproject/view/page_name.dart';
import 'package:oneproject/view/splash.dart';
import 'package:oneproject/view/teacherdeskpanel.dart';

class MyRouts {
  static List<GetPage> get list => [
        GetPage(name: "/", page: (() => NewScreen())),
        GetPage(name: PageNames.dashboard, page: (() => AdminDashboard())),
        GetPage(name: PageNames.Lps_SchoolPage, page: (() => SecondScreen())),
        GetPage(name: PageNames.splash, page: (() => SplashScreen())),
        GetPage(name: PageNames.login, page: (() => Loginpage())),
        GetPage(name: PageNames.adminpanel, page: (() => AdminDeskpanel())),
        GetPage(
            name: PageNames.TeachersLogin, page: (() => TeachersLoginpage())),
        GetPage(
            name: PageNames.Teacherspanel, page: (() => TeachersDeskpanel())),
      ];
}

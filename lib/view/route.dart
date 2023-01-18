import 'package:get/get_navigation/get_navigation.dart';

import 'package:oneproject/view/LoginAdmin.dart';
import 'package:oneproject/view/aboutus_dash.dart';
import 'package:oneproject/view/dashadmin.dart';
import 'package:oneproject/view/drawerplushome.dart';
import 'package:oneproject/view/feedash.dart';
import 'package:oneproject/view/loginTeachers.dart';
import 'package:oneproject/view/loginpage.dart';
import 'package:oneproject/view/loginstaffs.dart';
import 'package:oneproject/view/page_name.dart';
import 'package:oneproject/view/splash.dart';

import 'dashteacher.dart';

class MyRouts {
  static List<GetPage> get list => [
        GetPage(name: "/", page: (() => DrawerwithHomepage())),
        GetPage(name: PageNames.splash, page: (() => SplashScreen())),
        GetPage(name: PageNames.home, page: (() => DrawerwithHomepage())),
        GetPage(name: PageNames.customlogin, page: (() => Loginpage())),
        GetPage(name: PageNames.aboutusdash, page: (() => AboutUsDashboard())),
        GetPage(name: PageNames.dashadmin, page: (() => AdminDeskpanel())),
        GetPage(
            name: PageNames.dashteachers, page: (() => Teachersdashboard())),
        GetPage(name: PageNames.dashfee, page: (() => FeeDashboard())),
        GetPage(name: PageNames.admin_login, page: (() => AdminLoginPage())),
        GetPage(name: PageNames.dashstaff, page: (() => Staffdashboard())),
        GetPage(name: PageNames.loginteacher, page: (() => TeacherLoginPage())),
      ];
}

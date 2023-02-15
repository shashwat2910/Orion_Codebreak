import 'package:fuel_theft_tracker/views/dashboard.dart';
import 'package:fuel_theft_tracker/views/driverInfo.dart';
import 'package:fuel_theft_tracker/views/login_screen.dart';
import 'package:fuel_theft_tracker/views/singup_screen.dart';
import 'package:get/get.dart';

appRoutes() => [
      GetPage(
        name: '/login',
        page: () => LoginPage(),
      ),
      GetPage(
        name: '/signup',
        page: () => SignupPage(),
      ),
      GetPage(
        name: '/dashboard',
        page: () => DashBoard(),
      ),
      GetPage(
        name: '/driverinfo',
        page: () => DriverInformation(),
      )
    ];

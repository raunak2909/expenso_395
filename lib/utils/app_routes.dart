import 'package:expenso_395/ui/home/home_page.dart';
import 'package:expenso_395/ui/login/login_page.dart';
import 'package:expenso_395/ui/signup/sign_up_page.dart';
import 'package:expenso_395/ui/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes{

  static const String splash = '/splash';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';


  static Map<String, WidgetBuilder> getRoutes() => {
    splash: (context) => SplashPage(),
    login: (context) => LoginPage(),
    register: (context) => SignUpPage(),
    home: (context) => HomePage(),
  };

}
import 'package:activityTracer/core/constants/constants_shelf.dart';
import 'package:activityTracer/views/home/home_screen.dart';
import 'package:activityTracer/views/login/login.dart';
import 'package:activityTracer/views/register/register.dart';
import 'package:flutter/material.dart';


class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.home:
        return normalNavigate(HomeScreen());
      case NavigationConstants.register:
        return registerNavigate(RegisterScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
  MaterialPageRoute registerNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}

import 'package:activityTracer/views/home/login.dart';
import 'package:flutter/material.dart';


class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      // case NavigationConstants.login:
      //   return normalNavigate(LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}

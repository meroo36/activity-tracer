import 'package:activityTracer/core/constants/constants_shelf.dart';
import 'package:activityTracer/views/home/home_screen.dart';
import 'package:activityTracer/views/home/login.dart';
import 'package:flutter/material.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.home:
        return normalNavigate(HomeScreen());
      default:
        print(args.name);
        
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}

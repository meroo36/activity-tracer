import '../../../views/register/register.dart';
import 'package:flutter/material.dart';

import '../../../views/home/home_screen.dart';
import '../../../views/login/login_screen.dart';
import '../../constants/constants_shelf.dart';

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
        print(args.name);
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

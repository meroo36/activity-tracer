import 'package:flutter/material.dart';

import '../../../views/activity/view/activity.dart';
import '../../../views/home/home_screen.dart';
import '../../../views/register/register.dart';
import '../../../views/splash/splash.dart';
import '../../../views/tipstricks/view/tips_tricks.dart';
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
        return normalNavigate(RegisterScreen());
      case NavigationConstants.tips:
        return normalNavigate(TipsScreen());
      case NavigationConstants.activity:
        return normalNavigate(ActivityScreen());
      default:
        print(args.name);
        return MaterialPageRoute(
          builder: (context) => AnimatedSplashScreen(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}

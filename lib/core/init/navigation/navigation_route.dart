import 'package:flutter/material.dart';

import 'package:activityTracer/core/core_shelf.dart';
import 'package:activityTracer/views/login/login_screen.dart';
import 'package:activityTracer/views/tipstricks/view/tips_tricks.dart';

import '../../../views/register/register.dart';

import '../../../views/activity/view/activity.dart';
import '../../../views/home/home_screen.dart';
import '../../../views/register/register.dart';
import '../../../views/tipstricks/view/tips_tricks.dart';
import '../../constants/constants_shelf.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  var localManager = LocaleManager.prefrencesInit();
  NavigationRoute._init();

  Route<dynamic> generateRouteLoggedIn(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.home:
        return normalNavigate(HomeScreen());
      case NavigationConstants.register:
        return normalNavigate(RegisterScreen());
      case NavigationConstants.activity:
        return normalNavigate(ActivityScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
    }
  }

  Route<dynamic> generateRouteNotLoggedIn(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.home:
        return normalNavigate(HomeScreen());
      case NavigationConstants.register:
        return normalNavigate(RegisterScreen());
      case NavigationConstants.activity:
        return normalNavigate(ActivityScreen());
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
}

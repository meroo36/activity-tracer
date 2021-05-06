import 'package:activityTracer/core/init/helpers/step_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/core_shelf.dart';
import 'core/provider/provider_list.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light),
  );
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  var token = prefs.getString(PreferencesKeys.ACCESS_TOKEN.toString());
  runApp(
    MultiProvider(
      providers: [
        ...?ApplicationProvider.instance?.dependItems,
        ...?ApplicationProvider.instance?.uiChangesItems
      ],
      child: MyApp(token),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp(this.token);
  final String? token;
  @override
  Widget build(BuildContext context) {
    StepCounter(context).initPlatformState();
    print(token);
    if (token != null) {
      return MaterialApp(
        title: 'Activity Tracer',
        debugShowCheckedModeBanner: false,
        theme: getLightTheme(),
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        navigatorKey: NavigationService.instance.navigatorKey,
      );
    } else {
      return MaterialApp(
        title: 'Activity Tracer',
        debugShowCheckedModeBanner: false,
        theme: getLightTheme(),
        onGenerateRoute: NavigationRoute.instance.generateRoute2,
        navigatorKey: NavigationService.instance.navigatorKey,
      );
    }
  }
}

import 'package:activityTracer/core/init/helpers/step_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

import 'core/core_shelf.dart';
import 'core/provider/provider_list.dart';

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    print(
        'Native called background task: $task'); //simpleTask will be emitted here.
    return Future.value(true);
  });
}

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Workmanager().initialize(callbackDispatcher);
  await Workmanager().registerPeriodicTask(
    '1',
    'simpleTask',
    frequency: Duration(minutes: 15),
  );

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
        onGenerateRoute: NavigationRoute.instance.generateRouteLoggedIn,
        navigatorKey: NavigationService.instance.navigatorKey,
      );
    } else {
      return MaterialApp(
        title: 'Activity Tracer',
        debugShowCheckedModeBanner: false,
        theme: getLightTheme(),
        onGenerateRoute: NavigationRoute.instance.generateRouteNotLoggedIn,
        navigatorKey: NavigationService.instance.navigatorKey,
      );
    }
  }
}

import 'package:activityTracer/core/init/helpers/background_worker.dart';
import 'package:activityTracer/core/init/helpers/step_counter.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';

import 'core/core_shelf.dart';
import 'core/provider/provider_list.dart';

void callbackDispatcher() async {
  Workmanager().executeTask((task, inputData) async {
    print('Native called background task: $task');

    switch (task) {
      case 'simpleTask':
        print('gönderdim');
        await BackgroundWorker().sendStepsToApi();
        break;
      default:
    }
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
  var prefs = await SharedPreferences.getInstance();
  var token = prefs.getString(PreferencesKeys.ACCESS_TOKEN.toString());
  await Workmanager().initialize(callbackDispatcher, isInDebugMode: true);
  await Workmanager().registerPeriodicTask(
    '1',
    'simpleTask',
    frequency: Duration(minutes: 15),
    initialDelay: Duration(seconds: 30),
  );

  runApp(
    MultiProvider(
      providers: [
        ...?ApplicationProvider.instance?.dependItems,
        ...?ApplicationProvider.instance?.uiChangesItems
      ],
      child: DevicePreview(
        enabled: false,
        builder: (context) => MyApp(token),
      ),
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
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Activity Tracer',
        debugShowCheckedModeBanner: false,
        theme: getLightTheme(),
        onGenerateRoute: NavigationRoute.instance.generateRouteLoggedIn,
        navigatorKey: NavigationService.instance.navigatorKey,
      );
    } else {
      return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Activity Tracer',
        debugShowCheckedModeBanner: false,
        theme: getLightTheme(),
        onGenerateRoute: NavigationRoute.instance.generateRouteNotLoggedIn,
        navigatorKey: NavigationService.instance.navigatorKey,
      );
    }
  }
}

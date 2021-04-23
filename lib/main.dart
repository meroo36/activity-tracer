import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/core_shelf.dart';
import 'core/provider/provider_list.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [...?ApplicationProvider.instance?.dependItems],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity Tracer',
      debugShowCheckedModeBanner: false,
      theme: getLightTheme(),
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}

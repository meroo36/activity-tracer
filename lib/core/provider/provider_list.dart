import 'package:activityTracer/core/provider/activity_data.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../core_shelf.dart';
import '../init/navigation/navigation_service.dart';

class ApplicationProvider {
  static ApplicationProvider? _instance;
  static ApplicationProvider? get instance {
    _instance ??= ApplicationProvider._init();
    return _instance;
  }

  ApplicationProvider._init();

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [
    Provider.value(value: NavigationService.instance)
  ];
  List<SingleChildWidget> uiChangesItems = [
    ListenableProvider(create: (_) => ActivityDataModel(1))
  ];
}

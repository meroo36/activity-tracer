import 'package:activityTracer/core/core_shelf.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

class ActivityDataModel with ChangeNotifier {
  int _stepCount = 0;

  ActivityDataModel(this._stepCount);

  int get step => _stepCount;
  set step(count) {
    _stepCount = count;
    notifyListeners();
  }
}

// flutter pub run build_runner build

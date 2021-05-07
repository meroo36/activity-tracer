import 'dart:convert';

import 'package:activityTracer/core/services/api/step.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BackgroundWorker {
  Future sendStepsToApi() async {
    print('sendStepsToApi');
    var prefs = await SharedPreferences.getInstance();
    var stepsData = jsonDecode(prefs.getString('steps')!);
    await StepApi().send(stepsData['steps'], stepsData['date']);
  }
}

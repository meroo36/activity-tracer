import 'dart:convert';

import 'package:activityTracer/core/core_shelf.dart';
import 'package:activityTracer/core/provider/activity_data.dart';
import 'package:pedometer/pedometer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StepCounter {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  var context;
  String _status = '?', _steps = '?';

  StepCounter(this.context);

  void onStepCount(StepCount event) async {
    var activityData = Provider.of<ActivityDataModel>(context, listen: false);
    _steps = event.steps.toString();
    print(event.steps);
    activityData.step = int.parse(_steps);
    var stepObj = {
      'steps': event.steps,
      'date': event.timeStamp.toIso8601String(),
    };
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('steps', jsonEncode(stepObj));
    //print(jsonDecode(prefs.getString('steps')!));
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    _status = event.status;
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    _status = 'Pedestrian Status not available';
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    _steps = 'Step Count not available';
  }

  void initPlatformState() async {
    print('step counter initialized');
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);
  }
}

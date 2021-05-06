import 'package:activityTracer/core/core_shelf.dart';
import 'package:activityTracer/core/provider/activity_data.dart';
import 'package:pedometer/pedometer.dart';

class StepCounter {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  var context;
  String _status = '?', _steps = '?';

  StepCounter(this.context);

  void onStepCount(StepCount event) {
    var activityData = Provider.of<ActivityDataModel>(context, listen: false);
    print(activityData.step);
    _steps = event.steps.toString();
    activityData.step = int.parse(_steps);
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

  void initPlatformState() {
    print('step counter initialized');
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);
  }
}

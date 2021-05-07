import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core_shelf.dart';

class StepApi {
  final String _endpoint = 'http://192.168.1.33:3000/api/step';

  Future send(int stepCount, String date) async {
    try {
      var body = {'count': stepCount, 'date': date};
      var prefs = await SharedPreferences.getInstance();
      var token = prefs.getString(PreferencesKeys.ACCESS_TOKEN.toString());
      print('Step Service > Token: $token');
      var response = await Dio().put('$_endpoint/send',
          data: body,
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      print(response.data);
      return response.data;
    } on DioError catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      throw error.toString();
    }
  }
}

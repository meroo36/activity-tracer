import 'package:activityTracer/core/models/challenge/challenge_model.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core_shelf.dart';

class ChallengeApi {
  final String _endpoint = 'http://192.168.1.27:3000/api/challenges';

  Future<ChallengesModel> get() async {
    try {
      var response = await Dio().get('$_endpoint');
      return ChallengesModel.fromJson(response.data);
    } on DioError catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      throw error.toString();
    }
  }
}

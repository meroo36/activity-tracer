import 'package:dio/dio.dart';

import '../../core_shelf.dart';

class UserApiService {
  final String _endpoint = '$baseUrl/user';

  Future login(String email, String password) async {
    try {
      var body = {'email': email, 'password': password};
      var response = await Dio().post('$_endpoint/login', data: body);
      await LocaleManager.instance.setStringValue(
          PreferencesKeys.ACCESS_TOKEN, response.data['accessToken']);
      return response.data;
    } on DioError catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      throw error.toString();
    }
  }

  Future<UserModel> getUser() async {
    try {
      var token =
          LocaleManager.instance.getStringValue(PreferencesKeys.ACCESS_TOKEN);
      var response = await Dio().get('$_endpoint/getUser',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      return UserModel.fromJson(response.data['user']);
    } on DioError catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return UserModel.withError('$error');
    }
  }
}

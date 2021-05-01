import '../../core_shelf.dart';
import 'package:dio/dio.dart';

class UserApiService {
  final String _endpoint = 'https://b4ce24826b05.ngrok.io/api/user';

  Future<String> login(String email, String password) async {
    try {
      var body = {'email': email, 'password': password};
      var response = await Dio().post('$_endpoint/login', data: body);
      print(response);
      await LocaleManager.instance.setStringValue(
          PreferencesKeys.ACCESS_TOKEN, response.data['accessToken']);
      return response.data;
    } on DioError catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return error.toString();
    }
  }

  Future<UserModel> test(String email, String password) async {
    try {
      var body = {'email': email, 'password': password};
      var response = await Dio().post('$_endpoint/login', data: body);
      print(response);
      return UserModel.fromJson(response.data['user']);
    } on DioError catch (error, stacktrace) {
      print('Exception occured: $error stackTrace: $stacktrace');
      return UserModel.withError('$error');
    }
  }
}

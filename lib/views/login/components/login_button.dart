import 'package:activityTracer/core/services/api/user.dart';
import 'package:flutter/material.dart';
import '../../../core/core_shelf.dart';

class LoginButton extends StatelessWidget {
  final emailController;
  final passwordController;

  const LoginButton({
    Key? key,
    this.emailController,
    this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => context.accent),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: context.accent),
          ),
        ),
      ),
      onPressed: () async {
        //print(LocaleManager.instance.getStringValue(PreferencesKeys.ACCESS_TOKEN));
        var user = await UserApiService()
            .login(emailController.text, passwordController.text);
        if (user != null) {
          await LocaleManager.instance.setStringValue(
              PreferencesKeys.ACCESS_TOKEN, user['accessToken']);
          return NavigationService.instance.navigateToPageClear(path: '/home');
        } else {
          //show error
        }
      },
      child: Container(
        height: 46,
        width: double.infinity,
        child: Center(
          child: Text(
            'LOGIN',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}

import 'package:activityTracer/core/provider/user_list_provider.dart';
import 'package:activityTracer/core/services/api/user.dart';
import 'package:flutter/material.dart';
import '../../../core/core_shelf.dart';

class RegisterButton extends StatelessWidget {
  final emailController;
  final passwordController;

  const RegisterButton({
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
      onPressed: () =>
          {NavigationService.instance.navigateToPageClear(path: '/login')},
      child: Container(
        height: 46,
        width: double.infinity,
        child: Center(
          child: Text(
            'REGISTER',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}

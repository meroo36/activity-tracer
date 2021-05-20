import 'package:flutter/material.dart';
import '../../core/core_shelf.dart';

import '../../core/decoration/circular_border.dart';
import 'components/login_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //String? _error_text = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          slivers: [
            SliverAppBar(
              backgroundColor: context.primary,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                title: Container(
                  decoration: CircularBorder().appBar(context),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            'assets/logo/logo1.png',
                            alignment: Alignment.bottomCenter,
                            height: context.height * 20,
                          ),
                        ),
                      ),
                      Text('Welcome!'),
                      Text(
                        'we have been waiting for you.',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              pinned: true,
              expandedHeight: context.height * 40,
              centerTitle: true,
              shape: CircularBorder().appBarRounded(context),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(30),
                width: context.width * 50,
                height: context.height * 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('Username'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      decoration: TextFormDeco().inputFilledContainer(),
                      child: TextField(
                        decoration: TextFormDeco().borderlessInput(),
                        controller: emailController,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text('Password'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      decoration: TextFormDeco().inputFilledContainer(),
                      child: TextField(
                        decoration: TextFormDeco().borderlessInput(),
                        controller: passwordController,
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    LoginButton(
                      emailController: emailController,
                      passwordController: passwordController,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        GestureDetector(
                          onTap: () => {
                            NavigationService.instance
                                .navigateToPageClear(path: '/register')
                          },
                          child: Text(
                            'Lets sign-up!',
                            style: TextStyle(color: context.primary),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

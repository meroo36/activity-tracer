import 'package:activityTracer/core/decoration/circular_border.dart';
import 'package:activityTracer/views/login/components/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/core_shelf.dart';
import 'components/register_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? _error_text = '';

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
                background: Center(
                  child: Text(
                    'LOGO',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                centerTitle: true,
                title: Container(
                  decoration: CircularBorder().appBar(context),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Register'),
                      Text(
                        'we are looking foward',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text('to meet you..',
                      style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              pinned: true,
              expandedHeight: context.height * 32,
              centerTitle: true,
              shape: CircularBorder().appBarRounded(context),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(30),
                width: context.width * 50,
                height: context.height * 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('Email'),
                    ),
                    SizedBox(
                      height: 5,
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
                      height: 10,
                    ),
                    Container(
                      child: Text('Username'),
                    ),
                    SizedBox(
                      height: 5,
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
                      height: 10,
                    ),
                    Container(
                      child: Text('Password'),
                    ),
                    SizedBox(
                      height: 5,
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
                      height: 10,
                    ),
                    Container(
                      child: Text('Confirm Password'),
                    ),
                    SizedBox(
                      height: 5,
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
                      height: 15,
                    ),
                    RegisterButton(
                        emailController: emailController,
                        passwordController: passwordController,
                      ),
                    
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?'),
                          GestureDetector(
                            onTap: () =>
                            {NavigationService.instance.navigateToPageClear(path: '/login')},
                            child: Text(
                              'Log in!',
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

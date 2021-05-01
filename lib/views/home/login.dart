import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:activityTracer/core/decoration/text_form.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
   
    return new Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [Text(
                    "\nLOGO",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 50.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Text("\nWelcome!",
                  textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 45.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  Text("we have been waiting for you.",
                  textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w100),
                  ),
                  
                  ]
                  
                ),
              ),
              SizedBox(height: 68.0),
              Text("  Username"),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (input) {
                  if (input!.isEmpty) {
                    return "Provide an email";
                  }
                },
                decoration: InputDecoration(
                 
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onSaved: (input) => _email = input!,
              ),
              SizedBox(height: 8.0),
              Text("  Password"),
              TextFormField(
                
                validator: (input) {
                  if (input!.length < 6) {
                    return "Longer password please";
                  }
                },
                decoration: InputDecoration(
                  
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                onSaved: (input) => _password = input!,
                obscureText: true,
                autofocus: false,
              ),
              SizedBox(height: 24.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: (){},
                  padding: EdgeInsets.fromLTRB(2,15,2,15),
                  color: Theme.of(context).accentColor,
                  child: Text('LOGIN',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.normal)),
                ),
              ),
            
            Text("Don't have an account?Let's sign-up!",
            textAlign: TextAlign.center,

            )
            ],
            
          )
          
          ),
    );
  }

  
}
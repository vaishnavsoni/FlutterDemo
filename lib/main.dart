import 'package:flutter/material.dart';

import 'signup.dart';
import 'home.dart';
import 'forgot.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/home': (BuildContext context) => new HomePage(),
        '/forgot': (BuildContext context) => new ForgotPage()
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(80.0, 80.0, 0.0, 0.0),
                    child: InkWell(
                      child: Text('Login',
                          style: TextStyle(
                              fontSize: 80.0, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.fromLTRB(15.0, 115.0, 0.0, 0.0),
                  //   child: Text('There',
                  //       style: TextStyle(
                  //           fontSize: 80.0, fontWeight: FontWeight.bold)),
                  // ),
                  // Container(
                  //   padding: EdgeInsets.fromLTRB(220.0, 115.0, 0.0, 0.0),
                  //   child: Text('.',
                  //       style: TextStyle(
                  //           fontSize: 80.0,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.teal)),
                  // )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal))),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal))),
                      obscureText: true,
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(top: 15.0, left: 20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/forgot');
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.tealAccent,
                        color: Colors.teal,
                        elevation: 7.0,
                        child: GestureDetector(
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/home');
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(height: 20.0),
                    // Container(
                    //   height: 40.0,
                    //   color: Colors.transparent,
                    // child: Container(
                    //   decoration: BoxDecoration(
                    //       border: Border.all(
                    //           color: Colors.black,
                    //           style: BorderStyle.solid,
                    //           width: 1.0),
                    //       color: Colors.transparent,
                    //       borderRadius: BorderRadius.circular(20.0)),
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: <Widget>[
                    //     Center(
                    //       child:
                    //           ImageIcon(AssetImage('assets/facebook.png')),
                    //     ),
                    //     SizedBox(width: 10.0),
                    //     Center(
                    //       child: Text('Log in with facebook',
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               fontFamily: 'Montserrat')),
                    //     )
                    //   ],
                    // ),
                    // ),
                    // )
                  ],
                )),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'New to Flutter ?',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

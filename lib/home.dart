import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(70.0, 80.0, 0.0, 0.0),
                      child: Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.fromLTRB(260.0, 65.0, 0.0, 0.0),
                    //   child: Text(
                    //     '.',
                    //     style: TextStyle(
                    //         fontSize: 80.0,
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.teal),
                    //   ),
                    // )
                    Container(
                      padding: EdgeInsets.fromLTRB(60.0, 40.0, 0.0, 0.0),
                      child: Text(
                        'Screen',
                        style: TextStyle(
                            fontSize: 80.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 15.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text(
              //       'New to Spotify?',
              //       style: TextStyle(
              //         fontFamily: 'Montserrat',
              //       ),
              //     ),
              //     SizedBox(width: 5.0),
              //     InkWell(
              //       child: Text('Register',
              //           style: TextStyle(
              //               color: Colors.teal,
              //               fontFamily: 'Montserrat',
              //               fontWeight: FontWeight.bold,
              //               decoration: TextDecoration.underline)),
              //     )
              //   ],
              // )
            ]));
  }
}

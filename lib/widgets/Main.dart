import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/SignUpScreen.dart';

import './ProfileScreen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
//        routes: <String, WidgetBuilder>{
//          '/Profile': (BuildContext context) => new ProfileScreen(),
//        },
        home: new SplashScreen(),
        title: "Grocers",
      ),
    );

class SplashScreen extends StatelessWidget {
  SplashScreen();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.lightGreenAccent[700],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 120.0, 8.0, 8.0),
          child: Column(
            children: <Widget>[
              new Container(
                width: 150.0,
                height: 150.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage('assets/GrocersLogo.PNG'),
                  ),
                ),
              ),
              new SizedBox(height: 20),
              new Container(
                  width: 300.0,
                  height: 150.0,
                  child: new Text(
                    'Sell groceries online and grow your business',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  )),
              //new SizedBox(height: 130),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(
                        bottom: 45,
                      ),
                      width: 350.0,
                      height: 100.0,
                      child: RaisedButton(
                        elevation: 5,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(150.0),
                            side: BorderSide(color: Colors.white)),
                        color: Colors.white,
                        textColor: Colors.lightGreenAccent[700],
                        child: Text(
                          "GET STARTED",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

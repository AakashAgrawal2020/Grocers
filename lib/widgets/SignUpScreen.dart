import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_app/widgets/HomeScreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              height: 220,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.lightGreenAccent[700],
                shape: BoxShape.rectangle,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: IconButton(
                            padding: EdgeInsets.only(left: 5, top: 25),
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white,
                            iconSize: 40,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Column(
                        children: <Widget>[
                          new Container(
                            width: 170,
                            height: 170,
                            decoration: new BoxDecoration(
                              color: Colors.lightGreenAccent[700],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage('assets/GrocersLogo.PNG'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: new BoxDecoration(
                color: Colors.lightGreenAccent[700],
                shape: BoxShape.rectangle,
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey[500],
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: new TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Form(
                    child: ListView(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        new TextField(
                          cursorColor: Colors.lightGreenAccent[700],
                          textCapitalization: TextCapitalization.words,
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightGreen,
                                width: 2,
                              ),
                            ),
                            prefixIcon: const Icon(Icons.person,
                                color: Colors.lightGreen),
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        new TextField(
                          cursorColor: Colors.lightGreenAccent[700],
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightGreen,
                                width: 2,
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.lightGreen,
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextField(
                          cursorColor: Colors.lightGreenAccent[700],
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightGreen,
                                width: 2,
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.phone,
                              color: Colors.lightGreen,
                            ),
                            labelText: 'Phone',
                            labelStyle: TextStyle(
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        new TextField(
                          cursorColor: Colors.lightGreenAccent[700],
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightGreen,
                                width: 2,
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.store,
                              color: Colors.lightGreen,
                            ),
                            labelText: 'Store Name',
                            labelStyle: TextStyle(
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        new TextField(
                          cursorColor: Colors.lightGreenAccent[700],
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightGreen,
                                width: 2,
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.location_on,
                              color: Colors.lightGreen,
                            ),
                            labelText: 'Store Address',
                            labelStyle: TextStyle(
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        new TextFormField(
                          cursorColor: Colors.lightGreenAccent[700],
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightGreen,
                                width: 2,
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.lightGreen,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          obscureText: true,
                        ),
                        new Container(
                          padding: const EdgeInsets.only(
                            bottom: 40.0,
                            top: 40.0,
                          ),
                          child: new RaisedButton(
                            padding: const EdgeInsets.only(
                              top: 12.0,
                              bottom: 12.0,
                            ),
                            elevation: 3,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(100.0),
                            ),
                            color: Colors.lightGreenAccent[700],
                            textColor: Colors.white,
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 55.0,
                            right: 55.0,
                          ),
                          child: Text(
                            "By creating an account, you agree to our",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                child: Text(
                                  'Terms of Service',
                                  style: TextStyle(
                                    color: Colors.lightGreenAccent[700],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                onTap: () async {
                                  if (await canLaunch("https://google.com")) {
                                    await launch("https://google.com");
                                  }
                                },
                              ),
                              Text(
                                " and ",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              InkWell(
                                child: Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    color: Colors.lightGreenAccent[700],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                onTap: () async {
                                  if (await canLaunch("https://google.com")) {
                                    await launch("https://google.com");
                                  }
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Form(
                    child: ListView(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 28),
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        new TextField(
                          cursorColor: Colors.lightGreenAccent[700],
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightGreen, width: 2),
                            ),
                            icon: const Icon(Icons.email,
                                color: Colors.lightGreen),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextField(
                          cursorColor: Colors.lightGreenAccent[700],
                          decoration: const InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.lightGreen,
                                width: 2,
                              ),
                            ),
                            icon: const Icon(
                              Icons.lock,
                              color: Colors.lightGreen,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.lightGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          obscureText: true,
                        ),
                        new Container(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            bottom: 90.0,
                          ),
                          child: new RaisedButton(
                            padding: const EdgeInsets.only(
                              top: 12.0,
                              bottom: 12.0,
                            ),
                            elevation: 3,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0),
                            ),
                            color: Colors.lightGreenAccent[700],
                            textColor: Colors.white,
                            child: const Text(
                              'LOG IN',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 55.0,
                            right: 55.0,
                          ),
                          child: Text(
                            "Don't have an account? Swipe right to ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Center(
                          child: InkWell(
                              child: Text(
                                'create a new account.',
                                style: TextStyle(
                                  color: Colors.lightGreenAccent[700],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onTap: () async {
                                if (await canLaunch("https://google.com")) {
                                  await launch("https://google.com");
                                }
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

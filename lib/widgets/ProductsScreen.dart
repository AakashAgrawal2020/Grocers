import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/NewDairyProduct.dart';

import './UserDairyProducts.dart';

class ProductScreen extends StatelessWidget {
  final bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreenAccent[700],
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 40,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            title: Text(
              "Products",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.add_box, size: 30, color: Colors.white),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_contextBuilder) => NewDairyProduct(),
                  );
                },
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Dairy",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Vegetables",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Fruits",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              UserDairyProducts(),
              ListView(
                children: <Widget>[
                  Text("ksdbkjbsdkbj"),
                  Text("sassdfsdf"),
                  Text("sassdfsdf"),
                  Text("sassdfsdf"),
                ],
              ),
              ListView(
                padding:
                    EdgeInsets.only(top: 10, left: 7, right: 7, bottom: 10),
                children: <Widget>[
                  Card(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Container(
                      height: 145,
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Container(
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: new BorderSide(
                                    color: Colors.black, width: 0.0),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                ),
                              ),
                            ),
                            height: double.infinity,
                            width: 140,
                            child: Image(
                              image: AssetImage('assets/BrownEggs.PNG'),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "productName",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17,
                                          ),
                                        ),
                                        InkWell(
                                          child: Icon(Icons.delete),
                                          onTap: () {},
                                          enableFeedback: true,
                                          highlightColor: Colors.grey,
                                          splashColor: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 8.0,
                                            bottom: 8,
                                          ),
                                          child: Text("Product Id - 76357"),
                                        )
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 6.0,
                                            bottom: 6.0,
                                          ),
                                          child: Text(
                                            "Qty  -",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 45.0, top: 7.0),
                                          child: Container(
                                            height: 21,
                                            width: 60,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 6.0,
                                            bottom: 6.0,
                                          ),
                                          child: Text(
                                            "Price -",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: Container(
                                            height: 21,
                                            width: 60,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            height: 30,
                                            width: 62,
                                            child: Switch(
                                              value: isSwitched,
                                              onChanged: (value) {},
                                              activeTrackColor:
                                                  Colors.lightGreenAccent[700],
                                              activeColor: Colors.white,
                                              //   inactiveThumbColor: ,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

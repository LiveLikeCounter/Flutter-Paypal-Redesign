import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';

void main() => runApp(PaypalApp());

class PaypalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.white,
          appBar: mainAppBar(),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.white, width: 0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        blurRadius: 6,
                        spreadRadius: 1)
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset('assets/images/Paypal-logo.png',
                                height: 30),
                            SizedBox(width: 5),
                            Text('BALANCE',
                                style: TextStyle(color: PaypalColors.DarkBlue)),
                          ],
                        ),
                        Icon(Icons.info_outline)
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('assets/images/chip_thumb.png'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('\$', style: TextStyle(fontSize: 25)),
                                Text('452,20', style: TextStyle(fontSize: 40)),
                              ],
                            ),
                            Text('Available', style: TextStyle(color: PaypalColors.Grey)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 25,
                          child: FlatButton(
                              color: PaypalColors.LightGrey,
                              textColor: PaypalColors.DarkBlue,
                              child: Text("MR.RAGNAR LOTHBROK"),
                              onPressed: () {
                                print('A');
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                        ),
                        Spacer()
                      ],
                    ),
                  ],
                ),
              ),
              Text('Activity'),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo_album),
                    title: Text('Album'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

mainAppBar() {
  return AppBar(
    leading: Image.asset(
      'assets/images/icon_settings.png',
      color: PaypalColors.DarkBlue,
    ),
    title: Image.asset('assets/images/Paypal-logo-header.png', height: 25),
    actions: <Widget>[
      Image.asset('assets/images/icon_school-bell.png',
          color: PaypalColors.DarkBlue)
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

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
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Paypal-logo.png'),
                      fit: BoxFit.none,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/Paypal-logo.png'),
                          Text('BALANCE'),
                          Icon(Icons.info_outline)
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/chip_thumb.png'),
                          Column(
                            children: <Widget>[
                              Text('\$452,20'),
                              Text('Available')
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton(
                            child: Text('MR.RAGNAR LOTHBROK'),
                            onPressed: () {
                              print('object');
                            },
                          ),
                          Spacer()
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(15),
                elevation: 6,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset('assets/images/Paypal-logo.png'),
                        Text('BALANCE'),
                        Icon(Icons.info_outline)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset('assets/images/chip_thumb.png'),
                        Column(
                          children: <Widget>[
                            Text('\$452,20'),
                            Text('Available')
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        FlatButton(
                          child: Text('MR.RAGNAR LOTHBROK'),
                          onPressed: () {
                            print('object');
                          },
                        ),
                        Spacer()
                      ],
                    )
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
    title: Image.asset('assets/images/Paypal-logo-header.png'),
    actions: <Widget>[
      Image.asset('assets/images/icon_school-bell.png',
          color: PaypalColors.DarkBlue)
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

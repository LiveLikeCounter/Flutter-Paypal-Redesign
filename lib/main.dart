import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';

void main() => runApp(PaypalApp());

class PaypalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          appBar: _mainAppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _paypalCard(),
                _activityText(),
                _activityList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Container _activityText() {
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(width: 1, color: PaypalColors.LightGrey19))),
    margin: EdgeInsets.symmetric(horizontal: 15),
    padding: EdgeInsets.only(bottom: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Activity',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'VIEW ALL',
              style: TextStyle(fontSize: 10, color: PaypalColors.Grey),
            ),
            Icon(Icons.chevron_right, color: PaypalColors.Black50),
          ],
        ),
      ],
    ),
  );
}

BoxDecoration _tileDecoration() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white, width: 0, style: BorderStyle.solid),
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    boxShadow: [
      BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 0),
          blurRadius: 3,
          spreadRadius: 1)
    ],
  );
}

ListView _activityList() {
  return ListView(
    shrinkWrap: true,
    padding: EdgeInsets.all(15),
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: _tileDecoration(),
        child: ListTile(
          leading: Image.asset('assets/images/Nike.png'),
          title: Text('Nike Medieval'),
          subtitle: Text('Jan 21, 2019'),
          trailing: Text('-249,99 USD'),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: _tileDecoration(),
        child: ListTile(
          leading: Image.asset('assets/images/photo.png'),
          title: Text('Lagertha Lothbrok'),
          subtitle: Text('Jan 18, 2019'),
          trailing: Text('+102,00 USD'),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: _tileDecoration(),
        child: ListTile(
          leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/icon_shop.png'),
              backgroundColor: PaypalColors.LightBlue),
          title: Text('Spotify Finance Limited'),
          subtitle: Text('Jan 11, 2019'),
          trailing: Text('-9,99 USD'),
        ),
      ),
    ],
  );
}

Container _paypalCard() {
  return Container(
    margin: EdgeInsets.all(15),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
    decoration: BoxDecoration(
      color: Colors.white,
      border:
          Border.all(color: Colors.white, width: 0, style: BorderStyle.solid),
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
                Image.asset('assets/images/Paypal-logo.png', height: 30),
                SizedBox(width: 20),
                Text('BALANCE',
                    style:
                        TextStyle(color: PaypalColors.DarkBlue, fontSize: 12)),
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
                    SizedBox(width: 13),
                    Text('452,20', style: TextStyle(fontSize: 45)),
                    SizedBox(width: 13),
                  ],
                ),
                Text('Available',
                    style: TextStyle(color: PaypalColors.Grey, fontSize: 17)),
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
                child: Text("MR.RAGNAR LOTHBROK",
                    style:
                        TextStyle(color: PaypalColors.DarkBlue, fontSize: 12)),
                onPressed: () {
                  print('MR.');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
            Spacer()
          ],
        ),
      ],
    ),
  );
}

AppBar _mainAppBar() {
  return AppBar(
    leading: Image.asset(
      'assets/images/icon_settings.png',
      color: PaypalColors.DarkBlue,
    ),
    title: Center(child: Image.asset('assets/images/Paypal-logo-header.png', height: 25),),
    actions: <Widget>[
      Image.asset('assets/images/icon_school-bell.png',
          color: PaypalColors.DarkBlue)
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

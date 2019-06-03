import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';
import 'package:flutter_paypalredesign/screens/send2.dart';

class Send1 extends StatefulWidget {
  @override
  _Send1State createState() => _Send1State();
}

class _Send1State extends State<Send1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          title: Text('Send to Floki',
              style: TextStyle(fontFamily: "worksans", color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage:
                        AssetImage('assets/images/if_3_avatar_2754579.png'),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Floki',
                  style: TextStyle(
                      fontFamily: "worksans",
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 25,
                  child: FlatButton(
                    color: PaypalColors.DarkBlue,
                    textColor: Colors.white,
                    child: Text(
                      "paypal.me/manosthegods",
                      style: TextStyle(
                          fontFamily: "worksans",
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Amount',
                            style:
                                TextStyle(fontFamily: "worksans", fontSize: 20),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'USD',
                                style: TextStyle(
                                    fontFamily: "worksans",
                                    fontSize: 12,
                                    color: PaypalColors.Grey),
                              ),
                              SizedBox(width: 5),
                              InkWell(
                                child: Text(
                                  '0,00',
                                  style: TextStyle(
                                      fontFamily: "worksans",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute<Null>(
                                      builder: (BuildContext context) {
                                        return Send2();
                                      },
                                      fullscreenDialog: true,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(height: 0.1, color: PaypalColors.Grey),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Transaction fees',
                            style:
                                TextStyle(fontFamily: "worksans", fontSize: 20),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'USD',
                                style: TextStyle(
                                    fontFamily: "worksans",
                                    fontSize: 12,
                                    color: PaypalColors.Grey),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '0,00',
                                style: TextStyle(
                                    fontFamily: "worksans",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(height: 0.1, color: PaypalColors.Grey),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset('assets/images/Visa-logo.png'),
                          Spacer(flex: 1),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Visa',
                                style: TextStyle(
                                    fontFamily: "worksans",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Debit ****3017',
                                style: TextStyle(
                                    fontFamily: "worksans",
                                    fontSize: 12,
                                    color: PaypalColors.Grey),
                              ),
                            ],
                          ),
                          Spacer(flex: 5),
                          Icon(Icons.chevron_right,
                              color: PaypalColors.Grey, size: 40),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(height: 0.1, color: PaypalColors.Grey),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

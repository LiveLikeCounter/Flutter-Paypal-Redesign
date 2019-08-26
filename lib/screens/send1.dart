import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';
import 'package:flutter_paypalredesign/screens/send2.dart';

class Send1 extends StatefulWidget {
  @override
  _Send1State createState() => _Send1State();
}

class _Send1State extends State<Send1> with SingleTickerProviderStateMixin {
  String ammountValue = '0.00';
  bool showAddNote = false;
  bool showPageLoader = false;
  bool showSpinner = false;
  bool showChecked = false;
  AnimationController animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    animationController.addListener(() {
      if (animationController.status.toString() ==
          'AnimationStatus.completed') {
        setState(() {
          showSpinner = false;
          showChecked = true;
        });
        Timer(
          Duration(seconds: 1),
          () => setState(() {
                showPageLoader = false;
                Navigator.of(context).pop();
              }),
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  _startPayment() {
    setState(() {
      showPageLoader = true;
      showSpinner = true;
      animationController.forward();
    });
  }

  Widget _showPageLoader() {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaY: 10,
              sigmaX: 10,
            ),
            child: Container(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ),
        showSpinner
            ? Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/Paypal-logo.png', height: 35),
              )
            : Container(),
        showSpinner
            ? Align(
                alignment: Alignment.center,
                child: RotationTransition(
                  turns:
                      Tween(begin: 0.0, end: 2.0).animate(animationController),
                  child: Image.asset('assets/images/loading.png'),
                ),
              )
            : Container(),
        showChecked
            ? Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/images/checked.png'),
                    SizedBox(height: 25),
                    Material(
                      child: Text(
                        'Transaction Successful',
                        style: TextStyle(
                            fontFamily: "worksans",
                            fontSize: 17,
                            color: PaypalColors.Green),
                      ),
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        width: 150,
        child: Stack(
          children: <Widget>[
            Scaffold(
              backgroundColor: Colors.white,
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
                    style:
                        TextStyle(fontFamily: "worksans", color: Colors.black)),
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
                          backgroundImage: AssetImage(
                              'assets/images/if_3_avatar_2754579.png'),
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
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Amount',
                                  style: TextStyle(
                                      fontFamily: "worksans", fontSize: 17),
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
                                        this.ammountValue,
                                        style: TextStyle(
                                            fontFamily: "worksans",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      onTap: () async {
                                        var navigationResult =
                                            await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Send2(),
                                            fullscreenDialog: true,
                                          ),
                                        );
                                        setState(() {
                                          this.ammountValue =
                                              navigationResult.toString();
                                          if (navigationResult.toString() !=
                                              '0.0') {
                                            this.showAddNote = true;
                                          }
                                        });
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
                                  style: TextStyle(
                                      fontFamily: "worksans", fontSize: 17),
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
                                      '0.00',
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
                            SizedBox(height: 1),
                            Divider(height: 0.1, color: PaypalColors.Grey),
                            SizedBox(height: 30),
                            Opacity(
                              opacity: this.showAddNote ? 1.0 : 0.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Add Note',
                                    style: TextStyle(
                                        fontFamily: "worksans",
                                        fontSize: 17,
                                        color: PaypalColors.DarkBlue),
                                  ),
                                  Icon(Icons.chevron_right,
                                      color: PaypalColors.Grey, size: 40),
                                ],
                              ),
                            ),
                            SizedBox(height: 1),
                            Opacity(
                              opacity: this.showAddNote ? 1.0 : 0.0,
                              child: Divider(
                                  height: 0.1, color: PaypalColors.Grey),
                            ),
                            SizedBox(height: 30),
                            Opacity(
                              // opacity: 1.0,
                              opacity: this.showAddNote ? 1.0 : 0.0,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                child: FlatButton(
                                  color: PaypalColors.DarkBlue,
                                  textColor: PaypalColors.DarkBlue,
                                  disabledColor: PaypalColors.Grey,
                                  child: Text(
                                    "Send Now",
                                    style: TextStyle(
                                        fontFamily: "worksans",
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  onPressed: () => _startPayment(),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            showPageLoader ? _showPageLoader() : Container(),
          ],
        ),
      ),
    );
  }
}

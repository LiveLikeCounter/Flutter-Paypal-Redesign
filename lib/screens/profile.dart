import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';
import 'package:community_material_icon/community_material_icon.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          backgroundColor: PaypalColors.DarkBlue,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: <Widget>[
              IconButton(
                icon: Icon(CommunityMaterialIcons.close_circle),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/if_1_avatar_2754574.png', scale: 2.2),
                Text(
                  'Ragnar Lothbrok',
                  style: TextStyle(
                      fontFamily: 'worksans',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: 25),
                SizedBox(
                  height: 25,
                  child: FlatButton(
                    color: PaypalColors.LightGrey,
                    textColor: PaypalColors.DarkBlue,
                    child: Text(
                      "paypal.me/rag.lothbrok",
                      style: TextStyle(
                          fontFamily: "worksans",
                          color: PaypalColors.DarkBlue,
                          fontSize: 14),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<Null>(
                          builder: (BuildContext context) {
                            return Profile();
                          },
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "E-mails",
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          // contentPadding: EdgeInsets.only(top: 40, bottom: 20),
                          suffixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 18, start: 50),
                            child: Icon(Icons.chevron_right, color: Colors.white),
                          ),
                        ),
                        style: TextStyle(
                            fontFamily: "worksans",
                            color: Colors.white,
                            fontSize: 18),
                        initialValue: "ragnar.loth@kattlegat.com",
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Phone Numbers",
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          // contentPadding: EdgeInsets.only(top: 40, bottom: 20),
                          suffixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 18, start: 50),
                            child: Icon(Icons.chevron_right, color: Colors.white),
                          ),
                        ),
                        style: TextStyle(
                            fontFamily: "worksans",
                            color: Colors.white,
                            fontSize: 18),
                        initialValue: "01 12 45 87 66",
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Addresses",
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          // contentPadding: EdgeInsets.only(top: 40, bottom: 20),
                          suffixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 18, start: 50),
                            child: Icon(Icons.chevron_right, color: Colors.white),
                          ),
                        ),
                        style: TextStyle(
                            fontFamily: "worksans",
                            color: Colors.white,
                            fontSize: 18),
                        initialValue: "Kattegat, 9600, Danemark",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 140,
                  child: FlatButton(
                    color: PaypalColors.LightGrey,
                    textColor: PaypalColors.DarkBlue,
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                          fontFamily: "worksans",
                          color: PaypalColors.DarkBlue,
                          fontSize: 18),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';
import 'package:community_material_icon/community_material_icon.dart';

class Send2 extends StatefulWidget {
  @override
  _Send2State createState() => _Send2State();
}

class _Send2State extends State<Send2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Enter amount',
                style: TextStyle(fontFamily: "worksans", color: Colors.black)),
            actions: <Widget>[
              IconButton(
                icon: Icon(CommunityMaterialIcons.close_circle,
                    color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('USD', style: TextStyle(fontFamily: "sfprotext"),),
                    Spacer(flex: 1),
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          // prefixIcon: Padding(
                          //   padding: const EdgeInsetsDirectional.only(
                          //       top: 18, start: 50),
                          //   child: Text('$'),
                          // ),
                          prefixText: '\$',
                          prefixStyle: TextStyle(fontFamily: "vistolsans", fontSize: 25),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                            fontFamily: "sfprotext",
                            color: Colors.black,
                            fontSize: 50),
                        initialValue: "0,00",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

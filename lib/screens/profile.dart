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
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/if_1_avatar_2754574.png', scale: 2.2),
                Text(
                  'Ragnar Lothbrok',
                  style: TextStyle(fontFamily: 'worksans', fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';
import 'package:flutter_paypalredesign/screens/send1.dart';

class Send extends StatefulWidget {
  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 40,
            child: Theme(
              data: ThemeData(
                primaryColor: PaypalColors.LightGrey,
                primaryColorDark: PaypalColors.LightGrey,
              ),
              child: TextFormField(
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    fillColor: PaypalColors.LightGrey,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          BorderSide(color: PaypalColors.LightGrey, width: 0.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:
                          BorderSide(color: PaypalColors.LightGrey, width: 0.0),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.search,
                        color: PaypalColors.Grey,
                      ),
                    ),
                    hintText: "Search name, email, phone number"),
              ),
            ),
          ),
          SizedBox(height: 15),
          Divider(
            height: 0.1,
            color: Color.fromRGBO(0, 0, 0, 0.3),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Suggestions',
                    style: TextStyle(
                        fontFamily: "worksans",
                        fontSize: 16,
                        color: PaypalColors.Grey),
                  ),
                ),
                SizedBox(height: 5),
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                              'assets/images/if_3_avatar_2754579.png'),
                        ),
                      ),
                      title: Text('Floki',
                          style: TextStyle(fontFamily: "worksans")),
                      subtitle: Text('paypal.me/manosthegods',
                          style: TextStyle(fontFamily: "worksans")),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Send1()),
                        );
                      },
                    ),
                    ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                              'assets/images/if_9_avatar_2754584.png'),
                        ),
                      ),
                      title: Text('Lagertha Lothbrok',
                          style: TextStyle(fontFamily: "worksans")),
                      subtitle: Text('paypal.me/queenofKat',
                          style: TextStyle(fontFamily: "worksans")),
                    ),
                    ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                              'assets/images/if_12_avatar_2754577.png'),
                        ),
                      ),
                      title: Text('Bjorn Lothbrok',
                          style: TextStyle(fontFamily: "worksans")),
                      subtitle: Text('paypal.me/bjornironside',
                          style: TextStyle(fontFamily: "worksans")),
                    ),
                    ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                              'assets/images/if_8_avatar_2754583.png'),
                        ),
                      ),
                      title: Text('Ivar Lothbrok',
                          style: TextStyle(fontFamily: "worksans")),
                      subtitle: Text('paypal.me/theboneless',
                          style: TextStyle(fontFamily: "worksans")),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

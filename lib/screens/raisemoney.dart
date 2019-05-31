import 'package:flutter/material.dart';

class RaiseMoney extends StatefulWidget {
  @override
  _RaiseMoneyState createState() => _RaiseMoneyState();
}

class _RaiseMoneyState extends State<RaiseMoney> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Raise Money',
        style: TextStyle(fontFamily: "worksans", fontSize: 25),
      ),
    );
  }
}

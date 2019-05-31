import 'package:flutter/material.dart';

class Recieve extends StatefulWidget {
  @override
  _RecieveState createState() => _RecieveState();
}

class _RecieveState extends State<Recieve> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Recieve',
        style: TextStyle(fontFamily: "worksans", fontSize: 25),
      ),
    );
  }
}

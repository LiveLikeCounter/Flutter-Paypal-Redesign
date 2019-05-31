import 'package:flutter/material.dart';

import './screens/home.dart';

void main() => runApp(PaypalApp());

class PaypalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


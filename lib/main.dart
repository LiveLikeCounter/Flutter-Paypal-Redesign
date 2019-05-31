import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/screens/app.dart';

void main() => runApp(PaypalApp());

class PaypalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}


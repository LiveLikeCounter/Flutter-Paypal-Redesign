import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'package:flutter_paypalredesign/util.dart';
import 'package:community_material_icon/community_material_icon.dart';

class Send2 extends StatefulWidget {
  @override
  _Send2State createState() => _Send2State();
}

class _Send2State extends State<Send2> {
  var _controller =
      MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ',');
  bool _isButtonDisabled = true;

  @override
  void initState() {
    _controller.updateValue(0.00);
    super.initState();
  }

  _checkInputForConfirm(double amount) {
    if (amount > 0.0) {
      setState(() {
        _isButtonDisabled = false;
      });
    } else {
      setState(() {
        _isButtonDisabled = true;
      });
    }
  }

  _startPayment() {
    Navigator.of(context).pop(_controller.numberValue);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Enter amount',
              style: TextStyle(fontFamily: "worksans", color: Colors.black),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(CommunityMaterialIcons.close_circle,
                    color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop(_controller.numberValue);
                },
              ),
            ],
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Flexible(
                          fit: FlexFit.tight,
                          child: Text(
                            'USD',
                            style: TextStyle(fontFamily: "sfprotext"),
                          ),
                        ),
                        Spacer(flex: 1),
                        Flexible(
                          fit: FlexFit.loose,
                          flex: 2,
                          child: TextField(
                            controller: _controller,
                            keyboardType: TextInputType.numberWithOptions(
                                signed: false, decimal: true),
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsetsDirectional.only(
                                    top: 13, start: 25),
                                child: Text(
                                  '\$',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              prefixStyle: TextStyle(
                                  fontFamily: "vistolsans", fontSize: 25),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                                fontFamily: "sfprotext",
                                color: Colors.black,
                                fontSize: 50),
                            onChanged: (text) {
                              _checkInputForConfirm(double.parse(text));
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: FlatButton(
                        color: PaypalColors.DarkBlue,
                        textColor: PaypalColors.DarkBlue,
                        disabledColor: PaypalColors.Grey,
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                              fontFamily: "worksans",
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300),
                        ),
                        // onPressed: null,
                        onPressed:
                            _isButtonDisabled ? null : () => _startPayment(),
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
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_paypalredesign/util.dart';
import 'package:flutter_paypalredesign/screens/home.dart';
import 'package:flutter_paypalredesign/screens/send.dart';
import 'package:flutter_paypalredesign/screens/recieve.dart';
import 'package:flutter_paypalredesign/screens/raisemoney.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: ClipOval(
          child: Container(
            color: index == 0 ? PaypalColors.LightBlue : PaypalColors.Grey,
            child: Image.asset(
              "assets/images/icon_home.png",
              fit: BoxFit.scaleDown,
              width: 35.0,
              height: 35.0,
            ),
          ),
        ),
        title: Text(
          'Home',
          style: TextStyle(fontFamily: "worksans"),
        ),
      ),
      BottomNavigationBarItem(
          icon: ClipOval(
            child: Container(
              color: index == 1 ? PaypalColors.LightBlue : PaypalColors.Grey,
              child: Image.asset(
                "assets/images/icon_send.png",
                fit: BoxFit.scaleDown,
                width: 35.0,
                height: 35.0,
              ),
            ),
          ),
          title: Text(
            'Send',
            style: TextStyle(fontFamily: "worksans"),
          )),
      BottomNavigationBarItem(
        icon: ClipOval(
          child: Container(
            color: index == 2 ? PaypalColors.LightBlue : PaypalColors.Grey,
            child: Image.asset(
              "assets/images/icon_recieve.png",
              fit: BoxFit.scaleDown,
              width: 35.0,
              height: 35.0,
            ),
          ),
        ),
        title: Text(
          'Recieve',
          style: TextStyle(fontFamily: "worksans"),
        ),
      ),
      BottomNavigationBarItem(
        icon: ClipOval(
          child: Container(
            color: index == 3 ? PaypalColors.LightBlue : PaypalColors.Grey,
            child: Image.asset(
              "assets/images/icon_orion_user-group.png",
              fit: BoxFit.scaleDown,
              width: 35.0,
              height: 35.0,
            ),
          ),
        ),
        title: Text(
          'Raise money',
          style: TextStyle(fontFamily: "worksans"),
        ),
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Home(),
        Send(),
        Recieve(),
        RaiseMoney(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      this.index = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      this.index = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.white,
          appBar: _mainAppBar(),
          body: buildPageView(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (int index) {
              bottomTapped(index);
            },
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            elevation: 9,
            items: buildBottomNavBarItems(),
          ),
        ),
      ],
    );
  }
}

AppBar _mainAppBar() {
  return AppBar(
    leading: Image.asset(
      'assets/images/icon_settings.png',
      color: PaypalColors.DarkBlue,
    ),
    title: Image.asset('assets/images/Paypal-logo-header.png', height: 25),
    centerTitle: true,
    actions: <Widget>[
      Image.asset('assets/images/icon_school-bell.png',
          color: PaypalColors.DarkBlue)
    ],
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

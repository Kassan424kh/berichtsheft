import 'package:berichtsheft_app/provider/navigation_provider.dart';
import 'package:berichtsheft_app/provider/styling_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bottom_nav_bar_button.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final navigate = Provider.of<NavigationProvider>(context);
    final styling = Provider.of<StylingProvider>(context);
    return AnimatedPositioned(
      duration: Duration(milliseconds: 350),
      bottom: styling.bottomNavBar ? 0 : -100,
      width: size.width,
      height: 100,
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Color(0xff243048),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              BottomNavBarButton("Home", () => navigate.setSite("home")),
              Expanded(
                child: Container(),
              ),
              BottomNavBarButton("New", () => navigate.setSite("create_new")),
              SizedBox(width: 15),
              BottomNavBarButton("Login", () => navigate.setSite("login")),
              SizedBox(width: 15),
              BottomNavBarButton(
                  "Register", () => navigate.setSite("register")),
            ],
          ),
        ),
      ),
    );
  }
}

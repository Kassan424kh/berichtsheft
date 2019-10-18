import 'package:berichtsheft_app/provider/navigation_provider.dart';
import 'package:berichtsheft_app/provider/styling_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:html' as html;

import 'BottomNavBar/bottom_nav_bar.dart';

class Web extends StatefulWidget {
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  int _scrollToItem = 0;
  final _scrollToController = ScrollController();

  @override
  void initState() {
    super.initState();
    html.window.history.pushState("", "home", "/home");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final navigate = Provider.of<NavigationProvider>(context);
    setState(() => _scrollToItem = navigate.indexOfSelectedSite);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final navigate = Provider.of<NavigationProvider>(context);
    final styling = Provider.of<StylingProvider>(context);
    if (_scrollToController.hasClients)
      _scrollToController.animateTo(
        _scrollToItem * size.width,
        duration: new Duration(milliseconds: 350),
        curve: Curves.easeOutCubic,
      );
    return Listener(
      onPointerHover: (e) {
        styling.showBottomNavBar(true);
      },
      onPointerExit: (e) {
        styling.showBottomNavBar(false);
      },
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(children: <Widget>[
            ListView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              controller: _scrollToController,
              children: navigate.listOfSites.values.map((e) => e).toList(),
            ),
            BottomNavBar(),
          ]),
        ),
      ),
    );
  }
}
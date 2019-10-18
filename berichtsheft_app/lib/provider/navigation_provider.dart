import 'package:berichtsheft_app/Components/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'dart:html' as html;


class NavigationProvider with ChangeNotifier {
  final Map<String, Widget> listOfSites = {
    "home": HomeSite(),
    "create_new": CreateNew(),
    "login": LoginSite(),
    "register": RegisterSite(),
  };

  String selectedPage = "home";
  int indexOfSelectedSite = 0;

  setSite(sS) {
    selectedPage = sS;

    listOfSites.keys.toList().asMap().map((i, element) {
      if (element == sS) {
        html.window.history.pushState("", "$element", "/$element");
        indexOfSelectedSite = i;
      }
      return MapEntry(i, element);
    });
    notifyListeners();
  }
}

import 'package:berichtsheft_app/Components/Sites/create_new_site.dart';
import 'package:berichtsheft_app/Components/Sites/home_site.dart';
import 'package:berichtsheft_app/Components/Sites/login_site.dart';
import 'package:berichtsheft_app/Components/Sites/register_site.dart';
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

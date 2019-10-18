import 'package:flutter/cupertino.dart';

class NavigationProvider with ChangeNotifier {
  final List<String> _listOfSites = [
    "home",
    "create_new",
    "login",
    "register",
  ];

  String selectedPage = "home";
  int indexOfSelectedSite = 0;

  setSite(sS) {
    selectedPage = sS;

    _listOfSites.asMap().map((i, element) {
      if (element == sS){
        print(i);
        indexOfSelectedSite = i;
      } 
      return MapEntry(i, element);
    });
    notifyListeners();
  }
}

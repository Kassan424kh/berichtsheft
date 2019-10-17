import 'package:berichtsheft_app/Components/home_page.dart';
import 'package:flutter/cupertino.dart';

class NavigationProvider with ChangeNotifier{

  Map<String, Widget> listOfSites = {
    "home": HomeSite(),
    "login": LoginSite(),
    "register": RegisterSite(),
    "create_new": CreateNew(),
  };

  String selectedPage = "home";

  setSite(sS){
    selectedPage = sS;
    notifyListeners();
  }

  Widget get selectedSite {
    return listOfSites[selectedPage];
  }

}
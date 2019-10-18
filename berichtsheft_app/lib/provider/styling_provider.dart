import 'package:flutter/cupertino.dart';

class StylingProvider with ChangeNotifier{

  bool bottomNavBar= false;

  showBottomNavBar(bool isShow){
    bottomNavBar= isShow;
    notifyListeners();
  }

}
import 'package:berichtsheft_app/Components/home_page.dart';
import 'package:berichtsheft_app/provider/navigation_provider.dart';
import 'package:berichtsheft_app/provider/styling_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(builder: (context) => NavigationProvider()),
      ChangeNotifierProvider(builder: (context) => StylingProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Berichtsheft", home: Web());
  }
}

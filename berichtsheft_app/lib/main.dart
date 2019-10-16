import 'package:berichtsheft_app/Components/home_page.dart';
import 'package:berichtsheft_app/provider/navigation_provider.dart';
import 'package:berichtsheft_app/provider/styling_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  final originalCheck = Provider.debugCheckInvalidValueType;
  Provider.debugCheckInvalidValueType = <NavigationProvider>(NavigationProvider value) {
    if (value is NavigationProvider) return;
    originalCheck<NavigationProvider>(value);
  };
  Provider.debugCheckInvalidValueType = <StylingProvider>(StylingProvider value) {
    if (value is StylingProvider) return;
    originalCheck<StylingProvider>(value);
  };
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Berichtsheft",
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(builder: (_) => NavigationProvider()),
          ChangeNotifierProvider(builder: (_) => StylingProvider()),
        ],
        child: Web(),
      ),
    );
  }
}

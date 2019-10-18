import 'package:berichtsheft_app/Components/site_overview.dart';
import 'package:flutter/material.dart';

class CreateNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SiteOverview(
      backgroundImageLink: "https://images.unsplash.com/photo-1494537176433-7a3c4ef2046f?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
      color: Color(0xfff1f1f3),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Create New Site",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xfffd4c25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

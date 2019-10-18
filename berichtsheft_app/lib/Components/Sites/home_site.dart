import 'package:berichtsheft_app/Components/site_overview.dart';
import 'package:flutter/material.dart';

class HomeSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SiteOverview(
      backgroundImageLink: "https://cutt.ly/0edQwvJ",
      color: Color(0xfff1f1f3),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "HomePage",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xfffd4c25),
              ),
            ),
            SizedBox(height: 250)
          ],
        ),
      ),
    );
  }
}

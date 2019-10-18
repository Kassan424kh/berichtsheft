import 'package:berichtsheft_app/Components/site_overview.dart';
import 'package:flutter/material.dart';

class RegisterSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SiteOverview(
      backgroundImageLink: "https://images.unsplash.com/photo-1503289130890-6eff9c5df553?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      color: Color(0xffefdfe0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Register Site",
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

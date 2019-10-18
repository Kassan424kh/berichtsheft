import 'package:berichtsheft_app/Components/site_overview.dart';
import 'package:flutter/material.dart';

class LoginSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SiteOverview(
      backgroundImageLink: "https://images.unsplash.com/photo-1483794344563-d27a8d18014e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login Site",
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

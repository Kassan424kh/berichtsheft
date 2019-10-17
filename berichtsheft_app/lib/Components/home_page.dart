import 'package:berichtsheft_app/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Web extends StatefulWidget {
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {

  @override
  void didUpdateWidget(Web oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Widget is updated");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final navigate = Provider.of<NavigationProvider>(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(children: <Widget>[
          navigate.selectedSite,
          BottomNavBar(),
        ]),
      ),
    );
  }
}

class HomeSite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 50.0,
      child: Center(
        child: ListView(children: <Widget>[
          Container(
            width: size.width / 0.3,
            height: size.height - 50.0,
            child: Center(
              child: Text(Provider.of<NavigationProvider>(context).selectedPage),
            ),
          )
        ]),
      ),
    );
  }
}

class LoginSite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 50.0,
      child: Center(
        child: ListView(children: <Widget>[
          Container(
            width: size.width / 0.3,
            height: size.height - 50.0,
            child: Center(
              child: Text("LoginPage"),
            ),
          )
        ]),
      ),
    );
  }
}
class RegisterSite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 50.0,
      child: Center(
        child: ListView(children: <Widget>[
          Container(
            width: size.width / 0.3,
            height: size.height - 50.0,
            child: Center(
              child: Text("RegisterBage"),
            ),
          )
        ]),
      ),
    );
  }
}

class CreateNew extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 50.0,
      child: Center(
        child: ListView(children: <Widget>[
          Container(
            width: size.width / 0.3,
            height: size.height - 50.0,
            child: Center(
              child: Text("CreateNewPage"),
            ),
          )
        ]),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final navigate = Provider.of<NavigationProvider>(context);
    return Positioned(
      bottom: 0,
      width: size.width,
      height: 90,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              BottomNavBarButton("Home", () {
                print("test");
                navigate.setSite("create_new");
              }),
              Expanded(child: Container(),),
              BottomNavBarButton("New", () => navigate.setSite("create_new")),
              SizedBox(width: 5),
              BottomNavBarButton("Login", ()=> navigate.setSite("login")),
              SizedBox(width: 15),
              BottomNavBarButton("Register", () => navigate.setSite("register")),
            ],
          ),
        ),
      ),
    );
  }
}
class BottomNavBarButton extends StatelessWidget {
  final _name, _fun;

  BottomNavBarButton(this._name, this._fun);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      hoverElevation: 0,
      padding: EdgeInsets.all(0),
      color: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.redAccent[100],
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          _name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      onPressed: _fun,
    );
  }
}

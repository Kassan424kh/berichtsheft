import 'package:berichtsheft_app/provider/navigation_provider.dart';
import 'package:berichtsheft_app/provider/styling_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Web extends StatefulWidget {
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  int _scrollToItem = 0;
  final _scrollToController = ScrollController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final navigate = Provider.of<NavigationProvider>(context);
    setState(() => _scrollToItem = navigate.indexOfSelectedSite);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final styling = Provider.of<StylingProvider>(context);
    if (_scrollToController.hasClients)
      _scrollToController.animateTo(
        _scrollToItem * size.width,
        duration: new Duration(seconds: 1),
        curve: Curves.easeOutCubic,
      );
    return Listener(
      onPointerHover: (e) {
        styling.showBottomNavBar(true);
      },
      onPointerExit: (e) {
        print(e);
        styling.showBottomNavBar(false);
      },
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(children: <Widget>[
            ListView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              controller: _scrollToController,
              children: <Widget>[
                HomeSite(),
                CreateNew(),
                LoginSite(),
                RegisterSite(),
              ],
            ),
            BottomNavBar(),
          ]),
        ),
      ),
    );
  }
}

class HomeSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xffffb4a3),
            offset: Offset(0, 30),
            blurRadius: 30,
            spreadRadius: -30)
      ]),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 0,
        margin: EdgeInsets.all(20),
        child: Container(
          width: size.width / 0.3,
          height: size.height - 200,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
              image: NetworkImage("https://cutt.ly/0edQwvJ"),
            ),
            color: Color(0xfff1f1f3),
          ),
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
        ),
      ),
    );
  }
}

class LoginSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xffffb4a3),
              offset: Offset(0, 30),
              blurRadius: 30,
              spreadRadius: -30)
        ],
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 0,
        margin: EdgeInsets.all(20),
        child: Container(
          width: size.width / 0.3,
          height: size.height - 120,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
              image: NetworkImage("https://cutt.ly/0edQwvJ"),
            ),
            color: Color(0xfff1f1f3),
          ),
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
        ),
      ),
    );
  }
}

class RegisterSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xffffb4a3),
              offset: Offset(0, 30),
              blurRadius: 30,
              spreadRadius: -30)
        ],
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 0,
        margin: EdgeInsets.all(20),
        child: Container(
          width: size.width / 0.3,
          height: size.height - 120,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
              image: NetworkImage("https://cutt.ly/0edQwvJ"),
            ),
            color: Color(0xfff1f1f3),
          ),
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
        ),
      ),
    );
  }
}

class CreateNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xffffb4a3),
              offset: Offset(0, 30),
              blurRadius: 30,
              spreadRadius: -30)
        ],
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 0,
        margin: EdgeInsets.all(20),
        child: Container(
          width: size.width / 0.3,
          height: size.height - 120,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomCenter,
              image: NetworkImage("https://cutt.ly/0edQwvJ"),
            ),
            color: Color(0xfff1f1f3),
          ),
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
                SizedBox(height: 250)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final navigate = Provider.of<NavigationProvider>(context);
    final styling = Provider.of<StylingProvider>(context);
    return AnimatedPositioned(
      duration: Duration(milliseconds: 350),
      bottom: styling.bottomNavBar ? 0 : -100,
      width: size.width,
      height: 100,
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Color(0xff243048),
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              BottomNavBarButton("Home", () => navigate.setSite("home")),
              Expanded(
                child: Container(),
              ),
              BottomNavBarButton("New", () => navigate.setSite("create_new")),
              SizedBox(width: 15),
              BottomNavBarButton("Login", () => navigate.setSite("login")),
              SizedBox(width: 15),
              BottomNavBarButton(
                  "Register", () => navigate.setSite("register")),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBarButton extends StatefulWidget {
  final _name, _fun;

  BottomNavBarButton(this._name, this._fun);

  @override
  _BottomNavBarButtonState createState() => _BottomNavBarButtonState();
}

class _BottomNavBarButtonState extends State<BottomNavBarButton> {
  bool active = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: FlatButton(
        padding: EdgeInsets.all(0),
        color: Color(0xfffd4c25),
        child: Text(
          widget._name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: widget._fun,
      ),
    );
  }
}

import 'package:flutter/material.dart';

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

import 'package:flutter/material.dart';

class SiteOverview extends StatelessWidget {
  final String backgroundImageLink;
  final Widget child;
  final Color color;

  SiteOverview({Key key, this.backgroundImageLink, this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.only(bottom: 80),
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
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
              image: NetworkImage(backgroundImageLink),
            ),
            color: color,
          ),
          child: child,
        ),
      ),
    );
  }
}

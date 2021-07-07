import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({ 
    @required this.child,
    @required this.color,
    Key key,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 140,
      width: size.width,
      color: color,
      child: Align(
        alignment: Alignment(0, 0),
        child: child,
      ),
    );
  }
}
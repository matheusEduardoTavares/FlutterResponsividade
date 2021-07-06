import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({ 
    @required this.children,
    @required this.isVertical,
    Key key 
  }) : super(key: key);

  final List<Widget> children;
  final bool isVertical;

  @override 
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 20,
      direction: isVertical ? Axis.vertical : Axis.horizontal,
      children: children,
    );
  }
}

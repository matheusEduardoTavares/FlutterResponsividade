import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: '',
    home: Home(),
  ),
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // static final _size = double.infinity;
  // static final _size = 50.0;
  static final _size = null;

  Widget _getContainer({
    Widget child, 
    Color color, 
    double size,
    EdgeInsets padding,
  }) => Container(
    color: color ?? Colors.green,
    height: size ?? _size,
    width: size ?? _size,
    child: child,
    padding: padding,
  );

  final _isWrapWithCenter = false;
  final _isWrapWithAlign = false;
  final _isWrapperWithContainer = true;

  @override 
  Widget build(BuildContext context) {
    if (_isWrapWithCenter) {
      return Center(
        child: _getContainer(),
      );
    }
    else if (_isWrapWithAlign) {
      return Align(
        alignment: Alignment.bottomRight,
        child: _getContainer(),
      );
    }
    else if (_isWrapperWithContainer) {
      return Center(
        child: _getContainer(
          padding: const EdgeInsets.all(20.0),
          color: Colors.red,
          child: Container(
            color: Colors.green,
            width: 30,
            height: 30,
          ),
        ),
      );
    }

    return _getContainer();
  }
}
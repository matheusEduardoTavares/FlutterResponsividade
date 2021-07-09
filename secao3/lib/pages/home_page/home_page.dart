import 'package:flutter/material.dart';
import 'package:secao3/components/custom_drawer/custom_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  final _isWrapperWithContainer = false;
  final _isShowDrawer = true;

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
    else if (_isShowDrawer) {
      return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: const Text('Container'),
        ),
        body: _getContainer(),
      );
    }

    return _getContainer();
  }
}
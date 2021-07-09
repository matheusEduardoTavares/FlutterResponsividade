import 'package:flutter/material.dart';
import 'package:secao3/components/custom_drawer/custom_drawer.dart';

class ConstraintsPage extends StatelessWidget {
  ConstraintsPage({ Key key }) : super(key: key);

  static final _minSize = 70.0;
  static final _maxSize = 150.0;
  static final _containerSize = 10.0;
  // static final _containerSize = 1000.0;

  static final _myContainer = Container(
    height: _containerSize,
    width: _containerSize,
    color: Colors.green,
  );

  final _myConstrainedBox = ConstrainedBox(
    constraints: BoxConstraints(
      maxHeight: _maxSize,
      minHeight: _minSize,
      maxWidth: _maxSize,
      minWidth: _minSize,
    ),
    child: _myContainer,
  );

  static final _myUnconstrainedContainer = Container(
    height: 50,
    // width: 20,
    width: double.infinity,
    // width: 4000,
    color: Colors.green,
  );

  final _myUnconstrainedBox = UnconstrainedBox(
    child: _myUnconstrainedContainer,
  );

  final _myOverflowBox = OverflowBox(
    minWidth: 0.0,
    minHeight: 0.0,
    maxWidth: double.infinity,
    maxHeight: double.infinity,
    child: _myUnconstrainedContainer,
  );

  final _isShowConstrainedBox = false;
  final _isShowUnconstrainedBox = false;
  final _isShowOverflowBox = false;
  // final _isWrapCenter = true;
  final _isWrapCenter = false;
  final _isUseLimitedBox = true;

  Widget _getChildBasedConditions() {
    if (_isShowConstrainedBox) {
      print('ConstrainedBox');
      if (_isWrapCenter) {
        return Center(
          child: _myConstrainedBox,
        );
      }

      return _myConstrainedBox;
    }
    else if (_isShowUnconstrainedBox) {
      print('UnconstrainedBox');
      if (_isWrapCenter) {
        return Center(
          child: _myUnconstrainedBox,
        );
      }
      else if (_isUseLimitedBox) {
        return UnconstrainedBox(
          child: LimitedBox(
            maxWidth: 100,
            child: Container(
              color: Colors.green,
              width: double.infinity,
              height: 100,
            ),
          ),
        );
      }

      return _myUnconstrainedBox;
    }
    else if (_isShowOverflowBox) {
      print('OverflowBox');
      if (_isWrapCenter) {
        return Center(
          child: _myOverflowBox,
        );
      }
      else if (_isUseLimitedBox) {
        return OverflowBox(
          minWidth: 0.0,
          minHeight: 0.0,
          maxWidth: double.infinity,
          maxHeight: double.infinity,
          child: LimitedBox(
            maxWidth: 100.0,
            child: Container(
              color: Colors.green,
              width: double.infinity,
              height: 100,
            ),
          ),
        );
      }

      return _myOverflowBox;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return _getChildBasedConditions() ?? Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Constraints'),
      ),
      body: _myConstrainedBox,
    );
  }
}
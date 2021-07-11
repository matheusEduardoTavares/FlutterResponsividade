import 'package:flutter/material.dart';
import 'package:secao3/models/widgets_example/widgets_example.dart';

class IntrinsicHeightPage extends StatelessWidget {
  const IntrinsicHeightPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedExample = 1;
    final _widgetsExample = <WidgetsExample>[
      WidgetsExample(
        title: 'Exemplo 1',
        child: Align(
          alignment: Alignment.topLeft,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.cyan,
                ),
                Container(
                  height: 300,
                  width: 200,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 2',
        child: Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.cyan,
                ),
                Container(
                  height: 300,
                  width: 200,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    ];

    return _widgetsExample[_selectedExample].child;
  }
}
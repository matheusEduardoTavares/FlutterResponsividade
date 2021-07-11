import 'package:flutter/material.dart';
import 'package:secao3/models/widgets_example/widgets_example.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedExample = 0;
    final _widgetsExample = <WidgetsExample>[
      WidgetsExample(
        title: 'Exemplo 1',
        child: Align(
          alignment: Alignment.topLeft,
          child: LayoutBuilder(
            key: ValueKey('1'),
            builder: (_, constraints) => Container(
              alignment: Alignment.topLeft,
              height: constraints.maxHeight * .25,
              width: constraints.maxWidth * .75,
              color: Colors.red,
              child: LayoutBuilder(
                builder: (_, constraints) => Column(
                  children: [
                    Container(
                      height: constraints.maxHeight * .25,
                      width: constraints.maxWidth * .75,
                      color: Colors.blue,
                    ),
                    Container(
                      height: constraints.maxHeight * .25,
                      width: constraints.maxWidth * .75,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ];

    return _widgetsExample[_selectedExample].child;
  }
}
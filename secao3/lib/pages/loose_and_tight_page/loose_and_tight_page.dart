import 'package:flutter/material.dart';
import 'package:secao3/models/widgets_example/widgets_example.dart';

class LooseAndTightPage extends StatelessWidget {
  const LooseAndTightPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedExample = 1;
    final _widgetsExample = <WidgetsExample>[
      WidgetsExample(
        title: 'Exemplo 28',
        child: Container(
          color: Colors.yellow,
          child: Column(
            children: [
              Text('Hello...'),
              Text('World!'),
            ],
          ),
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 29',
        child: SizedBox.expand(
          child: Container(
            color: Colors.yellow,
            child: Column(
              children: [
                Text('Hello...'),
                Text('World!'),
              ],
            ),
          ),
        ),
      ),
    ];

    return Scaffold(
      body: _widgetsExample[_selectedExample].child,
    );
  }
}
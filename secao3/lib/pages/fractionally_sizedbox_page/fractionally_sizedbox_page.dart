import 'package:flutter/material.dart';
import 'package:secao3/models/widgets_example/widgets_example.dart';

class FractionallySizedBoxPage extends StatelessWidget {
  const FractionallySizedBoxPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _selectedExample = 1;
    final _widgetsExample = <WidgetsExample>[
      WidgetsExample(
        title: 'Exemplo 1',
        child: FractionallySizedBox(
          alignment: Alignment.center,
          heightFactor: 0.5,
          widthFactor: 0.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 2',
        child: LayoutBuilder(
          builder: (_, constraints) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: constraints.maxHeight * 0.2,
                color: Colors.blue,
              ),
              Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.2,
                ),
              ),
              Container(
                height: constraints.maxHeight * 0.2,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    ];

    return _widgetsExample[_selectedExample].child;
  }
}
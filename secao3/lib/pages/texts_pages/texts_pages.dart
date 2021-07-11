import 'package:flutter/material.dart';
import 'package:secao3/models/widgets_example/widgets_example.dart';

class TextsPages extends StatefulWidget {
  const TextsPages({ Key key }) : super(key: key);

  @override
  _TextsPagesState createState() => _TextsPagesState();
}

class _TextsPagesState extends State<TextsPages> {
  // var _selectedExample = 0;

  // var _widgetsExample = <WidgetsExample>[
  //   WidgetsExample(
  //     title: 'Exemplo 18',
  //     child: FittedBox(
  //       child: Text(
  //         'Hello World',
  //       ),
  //     ),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    final _selectedExample = 10;
    final _widgetsExample = <WidgetsExample>[
      WidgetsExample(
        title: 'Exemplo 18',
        child: FittedBox(
          child: Text(
            'Hello World. Hello World',
          ),
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 19',
        child: Center(
          child: FittedBox(
            child: Text(
              'Hello World.',
            ),
          ),
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 20',
        child: Center(
          child: FittedBox(
            child: Text(
              'Hello World. Hello World.'
              'Hello World. Hello World.',
            ),
          ),
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 21',
        child: Center(
          child: Text(
            'Hello World. Hello World.'
            'Hello World. Hello World.',
          ),
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 22',
        ///Irá quebrar
        child: FittedBox(
          child: Container(
            height: 20.0,
            width: double.infinity,
          ),
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 23',
        child: Row(
          children: [
            Container(
              color: Colors.red,
              child: const Text('Hello!'),
            ),
            Container(
              color: Colors.green,
              child: const Text('World!'),
            ),
          ],
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 24',
        ///Irá quebrar por overflow
        child: Row(
          children: [
            Container(
              color: Colors.red,
              child: const Text(
                'Demonstração de um texto longo'
                ' que não cabe na Row.'
              ),
            ),
            Container(
              color: Colors.green,
              child: const Text('World!'),
            ),
          ],
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 25',
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: const Text(
                  'Demonstração de um texto longo'
                  ' que não cabe na Row.'
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Text('World!'),
            ),
          ],
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 26',
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: const Text(
                  'Demonstração de um texto longo'
                  ' que não cabe na Row.'
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: const Text('World!'),
              ),
            ),
          ],
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 27',
        child: Row(
          children: [
            Flexible(
              child: Container(
                color: Colors.red,
                child: const Text(
                  'Demonstração de um texto longo'
                  ' que não cabe na Row.'
                ),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.green,
                child: const Text('World!'),
              ),
            ),
          ],
        ),
      ),
      WidgetsExample(
        title: 'Exemplo fora da aula',
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: const Text(
                  'Demonstração de um texto longo'
                  ' que não cabe na Row1.\n'
                  'Demonstração de um texto longo'
                  ' que não cabe na Row2.\n'
                  'Demonstração de um texto longo'
                  ' que não cabe na Row3.\n'
                  'Demonstração de um texto longo'
                  ' que não cabe na Row4.\n'
                ),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.green,
                child: const Text(
                  'Demonstração de um texto longo'
                  ' que não cabe na Row1.\n'
                  'Demonstração de um texto longo'
                  ' que não cabe na Row2.\n'
                  'Demonstração de um texto longo'
                  ' que não cabe na Row3.\n'
                  'Demonstração de um texto longo'
                  ' que não cabe na Row4.\n'
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    // return Stack(
    //   children: [
    //     Positioned(
    //       bottom: 10.0,
    //       left: 10.0,
    //       child: ElevatedButton(
    //         child: const Text('Voltar para home'),
    //         onPressed: () {
    //           Navigator.of(context).pushReplacementNamed(
    //             PagesDefinition.homePage,
    //           );
    //         },
    //       ),
    //     ),
    //     Positioned(
    //       bottom: 10.0,
    //       right: 10.0,
    //       child: Material(
    //         child: Container(
    //           height: 60,
    //           width: 200,
    //           child: DropdownButtonFormField<int>(
    //             onChanged: (newIndex) {
    //               setState(() {
    //                 _selectedExample = newIndex;
    //               });
    //             },
    //             items: _widgetsExample.asMap().map(
    //               (index, widget) => MapEntry(
    //                 index,
    //                 DropdownMenuItem(
    //                   child: Text(_widgetsExample[index].title),
    //                   value: index,
    //                 )
    //               ),
    //             ).values.toList(),
    //             decoration: InputDecoration(
    //               hintText: 'Trocar exemplo',
    //               border: OutlineInputBorder(),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     UnconstrainedBox(
    //       child: _widgetsExample[_selectedExample].child,
    //     ),
    //   ],
    // );

    return _widgetsExample[_selectedExample].child;
  }
}
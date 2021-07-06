import 'package:exemplo1/widgets/custom_drawer/custom_drawer.dart';
import 'package:exemplo1/widgets/my_wrap/my_wrap.dart';
import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  const WrapPage({ 
    Key key,
  }) : super(key: key);

  @override 
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
    var _isVertical = true;

    final _colors = [
      Colors.blue,
      Colors.red,
      Colors.grey,
      Colors.orange,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
    ];

  final _buttons = [
    ElevatedButton(
      child: const Text('Texto...................... 1'),
      onPressed: () => print('Texto.................................. 1'),
    ),
    ElevatedButton(
      child: const Text('Texto...................... 2'),
      onPressed: () => print('Texto.................................. 2'),
    ),
    ElevatedButton(
      child: const Text('Texto...................... 3'),
      onPressed: () => print('Texto.................................. 3'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
        bottom: PreferredSize(
          child: Wrap(
            spacing: 10,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              ..._buttons,
            ],
          ),
          preferredSize: Size.fromHeight(120),
        ),
      ),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: MyWrap(
                isVertical: _isVertical,
                children: _colors.map((currentColor) => Container(
                  key: GlobalKey(debugLabel: '$currentColor-${DateTime.now()}'),
                  color: currentColor,
                  height: 50,
                  width: 50,
                )).toList(),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  DropdownButtonFormField<bool>(
                    hint: Text('Escolha'),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _isVertical = value;
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: const Text('Vertical'),
                        value: true,
                      ),
                      DropdownMenuItem(
                        child: const Text('Horizontal'),
                        value: false,
                      ),
                    ]
                  )
                ],
              ),
            ),
            ElevatedButton(
              child: const Text('Add Button'),
              style: ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap
              ),
              onPressed: () {
                setState(() {
                  _buttons.add(
                    ElevatedButton(
                      child: const Text('Novo botão'),
                      onPressed: () {},
                    ),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
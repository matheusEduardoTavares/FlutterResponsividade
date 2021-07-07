import 'package:exemplo1/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'model/position.dart';

class AlignPage extends StatelessWidget {
  final _container = Container(
    height: 20,
    width: 20,
    color: Colors.blue,
  );

  final _positions = [
    Position(0, 0),
    Position(0.25, 0.25),
    Position(0.50, 0.50),
    Position(0.75, 0.75),
    Position(1, 1),
    Position(0, 5),
    Position(1, -1),
    Position(0.75, -0.75),
    Position(0.50, -0.50),
    Position(0.25, -0.25),
    Position(-0.5, -0.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align and Positioned'),
      ),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  ..._positions.map((e) => Align(
                    alignment: Alignment(e.x, e.y),
                    child: _container,
                  ))
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.red,
                    ),
                    left: 10.0,
                  ),
                  Positioned(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.grey,
                    ),
                    right: 10.0,
                  ),
                  Positioned(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.purple,
                    ),
                    bottom: 10.0,
                  ),
                  Positioned(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.yellow,
                    ),
                    top: 10.0,
                  ),
                  Positioned(
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.green,
                    ),
                    top: MediaQuery.of(context).size.width * 0.1,
                    left: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
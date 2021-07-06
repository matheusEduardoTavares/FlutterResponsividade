import 'package:exemplo1/screen_definition/screen_definition.dart';
import 'package:exemplo1/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _screen = ScreenDefinition.twentyFive;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(child: Text('Conceitos básicos de responsividade')),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              setState(() {
                _screen = value;
              });
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: const Text('Container ocupando 25% da tela (à esquerda)'),
                value: ScreenDefinition.twentyFive,
              ),
              PopupMenuItem(
                child: const Text('Container ocupando 75% da altura da tela e 50% da largura (centralizado)'),
                value: ScreenDefinition.fifty,
              ),
            ],
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Row(
        mainAxisAlignment: _screen == ScreenDefinition.twentyFive ? MainAxisAlignment.start : MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: _screen == ScreenDefinition.twentyFive ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blueGrey,
                height: _screen == ScreenDefinition.twentyFive ? size.height / 2 : size.height * 0.75,
                width: size.width / 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

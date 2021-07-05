import 'package:device_preview/device_preview.dart';
import 'package:exemplo1/screen_definition/screen_definition.dart';
import 'package:flutter/material.dart';

void main() {
  ///Uso do [DevicePreview] para testar de 
  ///forma fácil responsividade no próprio
  ///device
  runApp(
    DevicePreview(
      builder: (_) => MyApp(),
      ///Ativa / desativa o [DevicePreview]
      enabled: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      title: 'Conceitos básicos de responsividade',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Conceitos básicos de responsividade'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _screen = ScreenDefinition.twentyFive;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(child: Text(widget.title)),
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

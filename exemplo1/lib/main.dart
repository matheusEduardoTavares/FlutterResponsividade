import 'package:device_preview/device_preview.dart';
import 'package:exemplo1/pages/align_page/align_page.dart';
import 'package:exemplo1/pages/fitted_box_page/fitted_box_page.dart';
import 'package:exemplo1/pages/home_page/home_page.dart';
import 'package:exemplo1/pages/list_and_grid_view_page/list_and_grid_view_page.dart';
import 'package:exemplo1/pages/orientation_page/orientation_page.dart';
import 'package:exemplo1/pages/wrap_page/wrap_page.dart';
import 'package:exemplo1/utils/pages_definitions/pages_definitions.dart';
import 'package:flutter/material.dart';

void main() {
  ///Uso do [DevicePreview] para testar de 
  ///forma fácil responsividade no próprio
  ///device
  runApp(
    DevicePreview(
      builder: (_) => MyApp(),
      ///Ativa / desativa o [DevicePreview]
      enabled: false,
    ),
  );
}

// - Caso seja colocado uma altura física 
// em um componente que esteja envolto por 
// um Expanded e em volta do Expanded haja uma Column ou 
// Row, então a altura colocada é descartada, quem é considerado é o Expanded.
// - O Flexible com o fit de FlexFit.loose irá considerar 
// o tamanho do filho. Caso a altura exceda o limite, o Flexible 
// garante não dar overflow e dá o tamanho máximo possível. Agora, 
// se o tamanho disponível for maior que o do filho, o espaço 
// restante ficará vazio.

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      title: 'Conceitos básicos de responsividade',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
      ),
      initialRoute: PageDefinitions.homePage,
      routes: {
        PageDefinitions.homePage: (ctx) => HomePage(),
        PageDefinitions.wrapPage: (ctx) => WrapPage(),
        PageDefinitions.alignPage: (ctx) => AlignPage(),
        PageDefinitions.orientationPage: (ctx) => OrientationPage(),
        PageDefinitions.fittedBoxPage: (ctx) => FittedBoxPage(),
        PageDefinitions.listAndGridViewPage: (ctx) => ListAndGridViewPage(),
      },
    );
  }
}


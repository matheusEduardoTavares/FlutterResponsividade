import 'package:flutter/material.dart';
import 'package:projeto2/pages/home_page/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        ///Aqui adicionamos configurações para o [ResponsiveWrapper]
        ///Só de trocar o [defaultScale] para true é mudado o 
        ///comportamento dos widgets na tela, pois o comportamento
        ///padrão do flutter é só reajustar (resize) os componentes
        ///na tela, mas com o [defaultScale] true, o comportamento
        ///é mudado para dar zoom in ou zoom out nos componentes,
        ///de forma que o tamanho deles irá mudar devido a isso.
        ///O Widget em si continua tendo o seu tamanho normal, 
        ///mas o [ResponsiveFramework] faz esse ajuste de escala
        ///que dá a impressão de mudar o tamanho do widget. Mas
        ///manter o mesmo comportamento de escala para qualquer
        ///tamanho de tela não fica legal, por isso é importante
        ///explorar outros atributos do [ResponsiveWrapper.builder]
        ///como os [breakpoints], o [minWidth], [maxWidth], entre outros
        defaultScale: true,
        minWidth: 450,
        breakpoints: [
          // ResponsiveBreakpoint.autoScale(
          ResponsiveBreakpoint.resize(450, name: MOBILE,),
          ResponsiveBreakpoint.resize(700, name: TABLET,),
          ResponsiveBreakpoint.resize(800, name: DESKTOP,),
        ],
      ),
      home: HomePage(),
    );
  }
}
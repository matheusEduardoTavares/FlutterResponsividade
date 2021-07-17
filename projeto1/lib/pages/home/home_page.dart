import 'package:flutter/material.dart';
import 'package:projeto1/breakpoints.dart';
import 'package:projeto1/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:projeto1/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:projeto1/pages/home/widgets/sections/advantages_section.dart';
import 'package:projeto1/pages/home/widgets/sections/courses_section.dart';
import 'package:projeto1/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return LayoutBuilder(
      builder: (_, constraints) {
        ///O mesmo que printar constraints.maxHeight e constraints.maxWidth
        print('biggest ${constraints.biggest}');
        ///O mesmo que printar constraints.minHeight e constraints.minWidth
        print('smallest ${constraints.smallest}');
        ///Os tamanhos printados ficarão todos grandes 
        ///pois já vimos que o primeiro Widget recebe 
        ///constraints do tipo tight para ocupar todo 
        ///o espaço da tela, então o constraints.biggest 
        ///acabará sendo igual ao constraints.smallest
        return Container();
      },
    );
    */

    /*
    ///Agora é o [Center] quem recebe a constraint tight,
    ///portanto o [LayoutBuilder] irá começar a mostrar 
    ///o [constraints.biggest] como o tamanho da tela e o
    ///[constraints.smallest] como (0.0, 0.0)
    return Center(
      child: LayoutBuilder(
        builder: (_, constraints) {
          print('biggest ${constraints.biggest}');
          print('smallest ${constraints.smallest}');
          return Container();
        },
      ),
    );
    */

    return LayoutBuilder(
      builder: (_, constraints) => Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < mobileBreakpoint ?
          PreferredSize(
            child: MobileAppBar(),
            preferredSize: Size(double.infinity, 56),
          ) : PreferredSize(
            child: WebAppBar(), 
            preferredSize: Size(double.infinity, 72)
          ),
        drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1400,
              // maxHeight: 300,
            ),
            child: ListView(
              children: [
                TopSection(),
                AdvantagesSection(),
                CoursesSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
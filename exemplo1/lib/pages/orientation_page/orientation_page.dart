import 'package:exemplo1/pages/orientation_page/widgets/my_container/my_container.dart';
import 'package:exemplo1/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class OrientationPage extends StatelessWidget {
  OrientationPage({ Key key }) : super(key: key);

  final _screens = {
    'Orientation.landscape': MyContainer(
      color: Colors.red,
      child: const Text('Landscape'),
    ),
    'Orientation.portrait': MyContainer(
      color: Colors.blue,
      child: const Text('Portrait'),
    ),
  };

  @override
  Widget build(BuildContext context) {
    final _orientation = MediaQuery.of(context).orientation;
    print(_orientation);
    return OrientationBuilder(
      builder: (context, parentOrientation) {
        print('parentOrientation = $parentOrientation. Esta orientação não é influenciada por estar dentro da column (pois está fora), por isso fica certo');
        return Scaffold(
          appBar: AppBar(
            title: const Text('OrientationBuilder'),
          ),
          drawer: CustomDrawer(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OrientationBuilder(
                builder: (_, orientation) {
                  print('orientation = $orientation');
                  return _screens[_orientation.toString()];
                },
              ),
              Text('O OrientationBuilder pode ser influenciado pelo Widget pai, por isso nesse caso ele sempre fica Portrait. Nesse caso é só pegar a orientação do MediaQuery')
            ],
          ),
        );
      }
    );
  }
}
import 'package:exemplo1/utils/pages_definitions/pages_definitions.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  static var _selectedIndex = 0;

  @override 
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: const Text('Responsividade'),
          ),
          const Divider(),
          ListTile(
            selected: _selectedIndex == 0,
            title: const Text('Geral'),
            onTap: () {
              _selectedIndex = 0;
              Navigator.of(context).pushReplacementNamed(
                PageDefinitions.homePage,
              );
            }
          ),
          ListTile(
            selected: _selectedIndex == 1,
            title: const Text('Wrap'),
            onTap: () {
              _selectedIndex = 1;
              Navigator.of(context).pushReplacementNamed(
                PageDefinitions.wrapPage,
              );
            }
          ),
          ListTile(
            selected: _selectedIndex == 2,
            title: const Text('Align and Positioned'),
            onTap: () {
              _selectedIndex = 2;
              Navigator.of(context).pushReplacementNamed(
                PageDefinitions.alignPage,
              );
            }
          ),
          ListTile(
            selected: _selectedIndex == 3,
            title: const Text('OrientationBuilder'),
            onTap: () {
              _selectedIndex = 3;
              Navigator.of(context).pushReplacementNamed(
                PageDefinitions.orientationPage,
              );
            }
          ),
        ],
      ),
    );
  }
}
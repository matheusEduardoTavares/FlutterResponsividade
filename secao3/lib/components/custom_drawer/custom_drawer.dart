import 'package:flutter/material.dart';
import 'package:secao3/utils/pages_definition.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({ Key key }) : super(key: key);

  static var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: const Text('DRAWER'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: PagesDefinition.pages.length,
              itemBuilder: (_, index) => ListTile(
                selected: _selectedIndex == index,
                leading: PagesDefinition.pages[index].leading,
                title: Text(PagesDefinition.pages[index].title),
                onTap: () {
                  _selectedIndex = index;

                  Navigator.of(context).pushReplacementNamed(
                    PagesDefinition.pages[index].route,
                  );
                },
              )
            ),
          )
        ],
      ),
    );
  }
}
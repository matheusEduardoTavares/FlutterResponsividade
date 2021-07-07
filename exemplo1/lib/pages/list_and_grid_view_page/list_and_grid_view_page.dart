import 'package:exemplo1/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class ListAndGridViewPage extends StatelessWidget {
  const ListAndGridViewPage({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _defaultContainer = Container(
      height: 100,
      width: 100,
      color: Colors.red,
    );

    final _containerWithColumn = Column(
      children: [
        _defaultContainer,
        const SizedBox(height: 10,)
      ],
    );

    final _containersToRender = [
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
      _containerWithColumn,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListAndGridView Page'),
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: _containersToRender.map((e) => e).toList(),
            ),
          ),
          const SizedBox(height: 10,),
          const Divider(
            thickness: 10,
            height: 10,
            color: Colors.grey,
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: _containersToRender.map((e) => e).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
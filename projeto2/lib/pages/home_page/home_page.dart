import 'package:flutter/material.dart';
import 'package:projeto2/pages/home_page/widgets/responsive_app_bar.dart';
import 'package:projeto2/pages/home_page/widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ResponsiveAppBar(),
        preferredSize: Size(double.infinity, 52),
      ),
      backgroundColor: Colors.black87,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1000,
          ),
          // child: Container(
          //   color: Colors.red,
          //   width: 2000,
          //   height: 300,
          // ),
          child: ListView(
            children: [
              StoriesList(),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:projeto2/pages/home_page/widgets/responsive_app_bar.dart';

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: ResponsiveAppBar(),
        preferredSize: Size(double.infinity, 52),
      ),
    );
  }
}
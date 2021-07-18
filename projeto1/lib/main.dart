import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projeto1/pages/home/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ///No caso do Web, este [title] é o nome da aba
      ///no navegador
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      title: 'Curso de Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
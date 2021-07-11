import 'package:flutter/material.dart';
import 'package:secao3/utils/pages_definition.dart';

void main() => runApp(
  MaterialApp(
    title: 'Responsividade',
    routes: PagesDefinition.pagesName,
    initialRoute: PagesDefinition.homePage,
  ),
);
import 'package:flutter/material.dart';

class PagesDefinitionModel {
  const PagesDefinitionModel({
    @required this.route,
    @required this.leading,
    @required this.title,
  });

  final String route;
  final Widget leading;
  final String title;
}
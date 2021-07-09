import 'package:flutter/material.dart';
import 'package:secao3/models/pages_definition/pages_definition_model.dart';
import 'package:secao3/pages/constraints_page/constraints_page.dart';
import 'package:secao3/pages/home_page/home_page.dart';

abstract class PagesDefinition {
  static const homePage = '/home';
  static const constraintsPage = '/constraints-pages';

  static final pagesName = <String, Widget Function(BuildContext)>{
    homePage: (BuildContext _) => HomePage(),
    constraintsPage: (BuildContext _) => ConstraintsPage()
  };

  static final pages = <PagesDefinitionModel>[
    PagesDefinitionModel(
      leading: const Icon(Icons.first_page),
      title: 'Container',
      route: homePage,
    ),
    PagesDefinitionModel(
      leading: const Icon(Icons.two_k),
      title: 'Constraints',
      route: constraintsPage,
    ),
  ];
}
import 'package:flutter/material.dart';
import 'package:secao3/models/pages_definition/pages_definition_model.dart';
import 'package:secao3/pages/constraints_page/constraints_page.dart';
import 'package:secao3/pages/home_page/home_page.dart';
import 'package:secao3/pages/loose_and_tight_page/loose_and_tight_page.dart';
import 'package:secao3/pages/texts_pages/texts_pages.dart';

abstract class PagesDefinition {
  static const homePage = '/home';
  static const constraintsPage = '/constraints-pages';
  static const textsPage = '/texts-pages';
  static const looseAndTightPage = '/loose-and-tight-pages';

  static final pagesName = <String, Widget Function(BuildContext)>{
    homePage: (BuildContext _) => HomePage(),
    constraintsPage: (BuildContext _) => ConstraintsPage(),
    textsPage: (BuildContext _) => TextsPages(),
    looseAndTightPage: (BuildContext _) => LooseAndTightPage(),
  };

  static final pages = <PagesDefinitionModel>[
    PagesDefinitionModel(
      leading: const Icon(Icons.one_k),
      title: 'Container',
      route: homePage,
    ),
    PagesDefinitionModel(
      leading: const Icon(Icons.two_k),
      title: 'Constraints',
      route: constraintsPage,
    ),
    PagesDefinitionModel(
      leading: const Icon(Icons.three_k),
      title: 'Texts',
      route: textsPage,
    ),
    PagesDefinitionModel(
      leading: const Icon(Icons.four_k),
      title: 'LooseAndTight',
      route: looseAndTightPage,
    ),
  ];
}
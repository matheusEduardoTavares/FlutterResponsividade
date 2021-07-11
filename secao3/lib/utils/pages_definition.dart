import 'package:flutter/material.dart';
import 'package:secao3/models/pages_definition/pages_definition_model.dart';
import 'package:secao3/pages/auto_size_text_page/auto_size_text_page.dart';
import 'package:secao3/pages/constraints_page/constraints_page.dart';
import 'package:secao3/pages/fractionally_sizedbox_page/fractionally_sizedbox_page.dart';
import 'package:secao3/pages/home_page/home_page.dart';
import 'package:secao3/pages/intrinsic_height_page/intrinsic_height_page.dart';
import 'package:secao3/pages/layout_builder_page/layout_builder_page.dart';
import 'package:secao3/pages/loose_and_tight_page/loose_and_tight_page.dart';
import 'package:secao3/pages/texts_pages/texts_pages.dart';

abstract class PagesDefinition {
  static const homePage = '/home';
  static const constraintsPage = '/constraints-page';
  static const textsPage = '/texts-page';
  static const looseAndTightPage = '/loose-and-tight-page';
  static const layoutBuilderPage = '/layout-builder-page';
  static const fractionallySizedBoxPage = '/fractionally-sizedbox-page';
  static const intrinsicHeightPage = '/intrinsic-height-page';
  static const autoSizeTextPage = '/auto-size-text-page';

  static final pagesName = <String, Widget Function(BuildContext)>{
    homePage: (BuildContext _) => HomePage(),
    constraintsPage: (BuildContext _) => ConstraintsPage(),
    textsPage: (BuildContext _) => TextsPages(),
    looseAndTightPage: (BuildContext _) => LooseAndTightPage(),
    layoutBuilderPage: (BuildContext _) => LayoutBuilderPage(),
    fractionallySizedBoxPage: (BuildContext _) => FractionallySizedBoxPage(),
    intrinsicHeightPage: (BuildContext _) => IntrinsicHeightPage(),
    autoSizeTextPage: (BuildContext _) => AutoSizeTextPage(),
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
    PagesDefinitionModel(
      leading: const Icon(Icons.five_k),
      title: 'LayoutBuilder',
      route: layoutBuilderPage,
    ),
    PagesDefinitionModel(
      leading: const Icon(Icons.six_k),
      title: 'FractionallySizedBox',
      route: fractionallySizedBoxPage,
    ),
    PagesDefinitionModel(
      leading: const Icon(Icons.seven_k),
      title: 'IntrinsicHeightPage',
      route: intrinsicHeightPage,
    ),
    PagesDefinitionModel(
      leading: const Icon(Icons.eight_k),
      title: 'AutoSizeTextPage',
      route: autoSizeTextPage,
    ),
  ];
}
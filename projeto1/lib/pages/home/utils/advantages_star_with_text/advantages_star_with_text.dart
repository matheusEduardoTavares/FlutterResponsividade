import 'package:flutter/material.dart';

abstract class AdvantagesStarWithText {
  static List<Widget> getComponents({
    @required String title,
    @required String subtitle,
    TextAlign textAlign,
    SizedBox spaceBetweenStarAndTexts,
    bool isTextsOnColumn,
  }) {
    final texts = _getTexts(
      subtitle: subtitle,
      title: title,
      textAlign: textAlign
    );
    return [
      const Icon(
        Icons.star,
        color: Colors.white,
        size: 50.0,
      ),
      spaceBetweenStarAndTexts ?? const SizedBox(height: 8,),
      if (isTextsOnColumn ?? false)
        Column(
          children: texts,
        )
      else 
        ...texts,
    ];
  }

  static List<Widget> _getTexts({
    @required String title,
    @required String subtitle,
    TextAlign textAlign,
  }) => [
    Text(
      title ?? '+45.000 alunos',
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),
    ),
    Text(
      subtitle ?? 'Didática garantida',
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ];
}
import 'package:flutter/material.dart';
import 'package:projeto1/pages/home/utils/advantages_star_with_text/advantages_star_with_text.dart';

class HorizontalAdvantagesStarWithText extends StatelessWidget {
  const HorizontalAdvantagesStarWithText({ 
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: AdvantagesStarWithText.getComponents(
        title: title, 
        subtitle: subtitle,
        spaceBetweenStarAndTexts: const SizedBox(width: 8,),
        textAlign: TextAlign.start,
        isTextsOnColumn: true,
      ),
    );
  }
}
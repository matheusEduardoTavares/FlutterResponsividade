import 'package:flutter/material.dart';

class AdvantagesStarWithText extends StatelessWidget {
  const AdvantagesStarWithText({ 
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
      children: [
        const Icon(
          Icons.star,
          color: Colors.white,
          size: 50.0,
        ),
        const SizedBox(width: 8,),
        Column(
          children: [
            Text(
              title ?? '+45.000 alunos',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              subtitle ?? 'Didática garantida',
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:projeto1/pages/home/widgets/advantages_star_with_text/advantages_star_with_text.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        )
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        ///Espaçamento vertical
        runSpacing: 16.0,
        ///Espaçamento horizontal
        spacing: 8.0,
        children: [
          AdvantagesStarWithText(),
          AdvantagesStarWithText(),
          AdvantagesStarWithText(),
        ],
      ),
    );
  }
}
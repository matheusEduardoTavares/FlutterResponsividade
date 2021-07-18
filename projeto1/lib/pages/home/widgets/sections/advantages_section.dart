import 'package:flutter/material.dart';
import 'package:projeto1/breakpoints.dart';
import 'package:projeto1/pages/home/widgets/horizontal_advantages_star_with_text%20copy/horizontal_advantages_star_with_text.dart';
import 'package:projeto1/pages/home/widgets/vertical_advantages_star_with_text/vertical_advantages_star_with_text.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakpoint) {
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
                HorizontalAdvantagesStarWithText(),
                HorizontalAdvantagesStarWithText(),
                HorizontalAdvantagesStarWithText(),
              ],
            ),
          );
        }

        return Container(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            )
          ),
          child: Row(
            children: [
              Expanded(child: VerticalAdvantagesStarWithText()),
              const SizedBox(width: 4,),
              Expanded(child: VerticalAdvantagesStarWithText()),
              const SizedBox(width: 4,),
              Expanded(child: VerticalAdvantagesStarWithText()),
            ],
          ),
        );
      },
    );
  }
}
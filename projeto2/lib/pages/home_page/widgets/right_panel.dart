import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:projeto2/pages/home_page/widgets/suggestion_item.dart';
import 'package:projeto2/utils/images_links/images_links.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        width: 300,
        margin: const EdgeInsets.fromLTRB(
          35, 
          56, 
          20, 
          0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 29,
                  backgroundImage: NetworkImage(
                    ImagesLinks.flutterImage,
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Flutter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'Flutter',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sair',
                      style: TextStyle(
                        color: Color(0xFF0396F6),
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sugestões para você',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[500],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Ver tudo',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8,),
            SuggestionItem(),
            SuggestionItem(),
            SuggestionItem(),
          ],
        ),
      ),
    );
  }
}
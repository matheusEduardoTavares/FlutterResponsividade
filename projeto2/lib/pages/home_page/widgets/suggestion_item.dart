import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:projeto2/utils/images_links/images_links.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
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
                'Ligar',
                style: TextStyle(
                  color: Color(0xFF0396F6),
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
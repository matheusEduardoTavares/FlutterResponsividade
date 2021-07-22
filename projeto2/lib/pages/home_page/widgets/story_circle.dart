import 'package:flutter/material.dart';
import 'package:projeto2/utils/images_links/images_links.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                ImagesLinks.flutterImage,
              ),
            ),
          ),
        ),
        const Text(
          'Flutter',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
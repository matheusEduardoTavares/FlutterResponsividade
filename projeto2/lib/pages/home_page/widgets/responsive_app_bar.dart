import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1000,
        ),
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: const Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              padding: const EdgeInsets.only(left: 4),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        // prefixIcon: const Icon(
                        //   Icons.search,
                        //   color: Colors.white,
                        //   size: 15,
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
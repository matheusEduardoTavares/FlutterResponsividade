import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:projeto2/pages/home_page/widgets/responsive_menu_actions.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: MouseRegion(
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
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
              ],
              child: Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
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
                ),
              ),
            ),
            ResponsiveVisibility(
              visible: false,
              visibleWhen: [
                Condition.largerThan(name: MOBILE),
              ],
              replacement: ResponsiveMenuActions(),
              child: Expanded(
                child: ResponsiveMenuActions(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
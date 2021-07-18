import 'package:flutter/material.dart';
import 'package:projeto1/breakpoints.dart';
import 'package:projeto1/pages/home/widgets/course_item/course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: constraints.maxWidth >= tabletBreakpoint ? 
            0 : 16,
        ),
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 4.0,
        //   mainAxisSpacing: 4.0
        // ),
        ///Encurta a altura do [GridView] o suficiente para 
        ///caber todos os itens, e depois que couber todos os
        ///itens, a área do GridView acaba
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (_, index) => CourseItem()
      ),
    );
  }
}
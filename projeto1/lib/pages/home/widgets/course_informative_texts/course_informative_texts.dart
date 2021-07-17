import 'package:flutter/material.dart';
import 'package:projeto1/pages/home/widgets/custom_search_field.dart';

class CourseInformativeTexts extends StatelessWidget {
  const CourseInformativeTexts({ 
    this.contentFontSize,
    this.titleFontSize,
    this.crossAxisAlignment,
    Key key,
  }) : super(key: key);

  final double titleFontSize;
  final double contentFontSize;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      children: [
        Text(
          'Aprenda Flutter com este curso',
          style: TextStyle(
            fontSize: titleFontSize ?? 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8,),
        Text(
          'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22, 90. Qualidade garantida.',
          style: TextStyle(
            fontSize: contentFontSize ?? 18.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16,),
        CustomSearchField(),
      ],
    );
  }
}
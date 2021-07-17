import 'package:flutter/material.dart';
import 'package:projeto1/pages/home/widgets/course_informative_texts/course_informative_texts.dart';

class CourseInformativeCard extends StatelessWidget {
  const CourseInformativeCard({ 
    this.width,
    this.titleFontSize,
    this.contentFontSize,
    Key key,
  }) : super(key: key);

  final double width;
  final double titleFontSize;
  final double contentFontSize;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          width: width ?? 450,
          child: CourseInformativeTexts(
            contentFontSize: contentFontSize,
            titleFontSize: titleFontSize,
          ),
        ),
      ),
    );
  }
}
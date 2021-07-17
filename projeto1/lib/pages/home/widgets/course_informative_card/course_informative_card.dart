import 'package:flutter/material.dart';
import 'package:projeto1/pages/home/widgets/custom_search_field.dart';

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
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
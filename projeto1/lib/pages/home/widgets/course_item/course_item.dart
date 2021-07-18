import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4.0,),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              print('constraints.biggest = ${constraints.biggest}');
              print('constraints.smallest = ${constraints.smallest}');

              return AutoSizeText(
                'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        // Text(
        //   'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
        //   maxLines: 2,
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     fontSize: 15.0,
        //     color: Colors.white,
        //   ),
        // ),
        Text(
          'Daniel Ciolfi',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          'R\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
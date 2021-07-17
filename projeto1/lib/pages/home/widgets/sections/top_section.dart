import 'package:flutter/material.dart';
import 'package:projeto1/breakpoints.dart';
import 'package:projeto1/pages/home/widgets/course_informative_card/course_informative_card.dart';
import 'package:projeto1/pages/home/widgets/course_informative_texts/course_informative_texts.dart';

class TopSection extends StatelessWidget {
  TopSection({ Key key }) : super(key: key);

  final _image = Image.network(
    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
    fit: BoxFit.cover,
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          ///O AspectRatio mantém sempre a proporção da imagem
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: _image,
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: CourseInformativeCard(),
                ),
              ],
            )
          );
        }

        ///Ou é tablet ou é web, mas o caso de web já tratamos no 
        ///if acima, portanto aqui é como fica para o tablet
        if (maxWidth >= mobileBreakpoint) {
          ///Dessa forma dá impressão que a imagem está se mexendo - dando 
          ///zoom in e zoom out pois se formos aumentando / diminuindo a 
          ///largura da página na web, vemos que a altura continua a mesma para
          ///a imagem
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  height: 250,
                  child: _image,
                  width: double.infinity,
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: CourseInformativeCard(
                    width: 260,
                    titleFontSize: 35,
                    contentFontSize: 15,
                  ),
                )
              ],
            ),
          );
        }

        ///Modo mobile
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.2,
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: _image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CourseInformativeTexts(
                titleFontSize: 35,
                contentFontSize: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            )
          ],
        );
      }
    );
  }
}
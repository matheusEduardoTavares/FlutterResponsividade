import 'package:flutter/material.dart';
import 'package:projeto1/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          ///O AspectRatio mantém sempre a proporção da imagem
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Container(
                        width: 450,
                        child: Column(
                          children: [
                            const Text(
                              'Aprenda Flutter com este curso',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8,),
                            Text(
                              'Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22, 90. Qualidade garantida.',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 16,),
                            CustomSearchField(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          );
        }

        return Container();
      }
    );
  }
}
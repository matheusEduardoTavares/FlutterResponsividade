import 'package:flutter/material.dart';
import 'package:projeto2/pages/home_page/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({ 
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    print(ResponsiveWrapper.of(context).activeBreakpoint);

    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(
        vertical: mobile ? 15 : 30
      ),
      ///O .separated permite dar um espaço
      ///entre os itens da lista, em que o 
      ///[separatorBuilder] recebe o contexto
      ///e o index e permite retornar um widget 
      ///para fazer esse espaçamento
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SizedBox(
            width: 16.0,
          ),
          itemCount: 16,
          itemBuilder: (_, index) => StoryCircle(),
        ),
      ),
    );
  }
}
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:secao3/models/widgets_example/widgets_example.dart';

class AutoSizeTextPage extends StatelessWidget {
  const AutoSizeTextPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _autoSizeGroup = AutoSizeGroup();
    final _selectedExample = 5;
    final _widgetsExample = <WidgetsExample>[
      WidgetsExample(
        title: 'Exemplo 1',
        child: AutoSizeText(
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.',
          style: TextStyle(
            fontSize: 30.0
          ),
          maxLines: 2,
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 2',
        child: AutoSizeText(
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.',
          style: TextStyle(
            fontSize: 30.0
          ),
          minFontSize: 18.0,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 3',
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              child: AutoSizeText(
                'Um texto na tela.'
                'Um texto na tela.'
                'Um texto na tela.'
                'Um texto na tela.',
                group: _autoSizeGroup,
              ),
            ),
            Container(
              height: 300,
              width: 300,
              child: AutoSizeText(
                'Um texto na tela.'
                'Um texto na tela.'
                'Um texto na tela.'
                'Um texto na tela.',
                group: _autoSizeGroup,
              ),
            ),
          ],
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 4',
        child: AutoSizeText(
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.',
          style: TextStyle(
            fontSize: 40.0
          ),
          minFontSize: 10.0,
          stepGranularity: 10,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 5',
        child: AutoSizeText(
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.',
          presetFontSizes: [
            40, 20, 14
          ],
          maxLines: 4,
        ),
      ),
      WidgetsExample(
        title: 'Exemplo 6',
        child: AutoSizeText(
          'Um texto na tela.'
          'Um texto na tela.'
          'Um texto na tela.'
          // 'Um texto na tela.'
          'Um texto na tela.',
          maxLines: 1,
          overflowReplacement: Text(
            'Desculpe, seu texto é muito longo'
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoSizeText'),
      ),
      body: _widgetsExample[_selectedExample].child,
    );
  }
}
import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (_, constraints) {
          ///Nesse caso as constraints irão mostrar que a 
          ///largura máxima é igual a mínima e corresponde a 
          ///largura da tela devido ao [Expanded], já a altura
          ///será mostrado que o mínimo é 0 e o máximo é 
          ///infinito. Nesse caso, se setarmos uma altura maior 
          ///que a [WebAppBar], não irá quebrar nem dar 
          ///overflow, simplesmente irá mostrar apenas o que caber
          print('biggest ${constraints.biggest}, smallest ${constraints.smallest}');
          // return Container(
          //   height: 400,
          //   width: 200,
          //   color: Colors.red,
          // );

          ///É importante definirmos a altura aqui já 
          ///que a altura máxima é infinita e pode acabar
          ///gerando erro
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(
                      color: Colors.grey[600],
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 4,),
                      ///Esse botão acabou definindo a 
                      ///altura mínima e máxima do [Container],
                      ///então o [Container] não pode ser menor
                      ///que o [IconButton]. O [Container] sabe 
                      ///que esse tamanho do botão é o seu tamanho
                      ///mínimo, e ele não possui tamanho máximo,
                      ///logo, sempre irá respeitar o tamanho 
                      ///minimo
                      IconButton(
                        icon: const Icon(Icons.search),
                        color: Colors.grey[500],
                        onPressed: () {},
                      ),
                      ///Se colocar o [TextField] sem nada como wrap
                      ///aqui dentro da [Row] irá quebrar dizendo que
                      ///a largura não está definida. Como já sabemos 
                      ///o [Row] é do tipo [UnconstrainedBox], portanto
                      ///não impõe tamanhos para os seus filhos, e 
                      ///acontece que por isso a largura fica infinita e
                      ///no caso do [TextField] ele precisa saber qual é
                      ///a largura que deve ocupar. Mesmo se o [TextField]
                      ///tiver um wrap de um [Expanded] continuará quebrando,
                      ///pois o primeiro elemento deste componente já é um 
                      ///[Expanded], então ocupará toda a largura, aí dentro
                      ///dele tem a [Row] que tem como children um [Container]
                      ///que por sua vez tem um child que é uma [Row] com um
                      ///[IconButton] e um [Expanded] como children. Nesse caso,
                      ///não sabemos qual deve ser a largura da primeira [Row]
                      ///desta árvore, de forma que este [Expanded] não tem como
                      ///expandir para ocupar tudo. Então precisamos definir o
                      ///width para o [Container] dentro da [Row], ou colocando
                      ///um width físico no [Container], ou fazendo wrap do 
                      ///[Container] com um [Expanded].
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma coisa aqui',
                            ///Deixa centralizado na tela o texto dentro do campo
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400)
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Aprender',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(width: 18.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Flutter',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
                
            ],
          );
        },
      ),
    );
  }
}
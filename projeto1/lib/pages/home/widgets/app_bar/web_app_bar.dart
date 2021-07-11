import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text('Flutter'),
          // const SizedBox(width: 32,),
          // Expanded(child: Container()),
          ///Usar as 2 linhas comentadas ou o [Spacer]:
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(width: 24,),
          SizedBox(
            height: 38.0,
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Text('Fazer login'),
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: Colors.white,
                    width: 2.0
                  ),
                )
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 8.0,),
          SizedBox(
            height: 40.0,
            child: ElevatedButton(
              child: const Text('Cadastre-se'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
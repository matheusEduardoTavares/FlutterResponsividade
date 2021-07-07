import 'package:exemplo1/widgets/custom_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class FittedBoxPage extends StatefulWidget {
  FittedBoxPage({ Key key }) : super(key: key);

  @override
  _FittedBoxPageState createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  final _imagePath = 'assets/images/flutter_logo.jpg';
  var _boxFit = BoxFit.contain;

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text('FittedBox'),),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FittedBox(
                fit: _boxFit,
                child: Image.asset(
                  _imagePath,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            DropdownButtonFormField(
              hint: const Text('Trocar boxFit', style: TextStyle(color: Colors.white),),
              onChanged: (value) => setState(() { _boxFit = value; }),
              dropdownColor: Colors.white,
              focusColor: Colors.white,
              iconEnabledColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 20,
                    style: BorderStyle.solid,
                  ),
                ),
                // fillColor: Colors.white,
                // focusColor: Colors.white,
                // hoverColor: Colors.white,
                // counterStyle: TextStyle(color: Colors.white),
              ),
              items: [
                DropdownMenuItem(
                  child: const Text('BoxFit.contain'),
                  value: BoxFit.contain,
                ),
                DropdownMenuItem(
                  child: const Text('BoxFit.cover'),
                  value: BoxFit.cover,
                ),
                DropdownMenuItem(
                  child: const Text('BoxFit.fill'),
                  value: BoxFit.fill,
                ),
                DropdownMenuItem(
                  child: const Text('BoxFit.fitHeight'),
                  value: BoxFit.fitHeight,
                ),
                DropdownMenuItem(
                  child: const Text('BoxFit.fitWidth'),
                  value: BoxFit.fitWidth,
                ),
                DropdownMenuItem(
                  child: const Text('BoxFit.none'),
                  value: BoxFit.none,
                ),
                DropdownMenuItem(
                  child: const Text('BoxFit.scaleDown'),
                  value: BoxFit.scaleDown,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
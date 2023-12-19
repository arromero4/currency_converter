import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_converter_material_page.dart';

//we need to practice and keep learning
//we are going to work with this
///Widgets are the building blocks
///of the user interface
///they responsible for describing
///what the UI should look like

void main() {
  //Compile time constant
  //const significa que no se tiene que
  //recrear cada vez que ejecutas
  runApp(const MyCupertinoApp());
}

///Tipos de Widgets
///1. StatelessWidget
///
///2. StatefulWidget
///
///State
///refers to any data that will determine how
///your widget should look like or how it should be
///rendered or how it should behave
///
///
///1. Material design
///2. Cuppertino design

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //es una clase que ayuda a flutter a identificar
  //la diferencia entre widgets
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterCupertinoPage(),
    );
  }
}

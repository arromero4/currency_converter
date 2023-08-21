import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

///Widgets are the building blocks
///of the user interface
///they responsible for describing
///what the UI should look like

void main() {
  //Compile time constant
  //const significa que no se tiene que
  //recrear cada vez que ejecutas
  runApp(const MyApp());
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

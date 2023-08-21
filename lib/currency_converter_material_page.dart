import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  ///Widget requiere algo conocido como key para su Constructor
  ///donde sea que extiendas una clase abstracta tienes que pasar key a la superclase
  const CurrencyConverterMaterialPage({super.key});
  //({Key? key : super(key: key)});

  @override

  ///BuildContext is basically a telling
  ///the location of the widget
  ///in the widget tree
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.white,
          width: 2,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 40, 52, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                  fontSize: 35, //default 14
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(9, 150, 217, 1)),
            ),
            //padding
            //container
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD:',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.lightBlue,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            //buttons:
            //1. raised
            //2. appears like a text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  //debug, release, profile
                  //to run in release mode
                  //flutter run -release or -profile
                  if (kDebugMode) {
                    debugPrint('clic');
                  }
                },
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(15),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue[700]),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                ),
                child: const Text('Convert'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

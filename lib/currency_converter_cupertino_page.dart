import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    //debug, release, profile
    result = double.parse(textEditingController.text) * 17.22;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {


    return CupertinoPageScaffold(
      backgroundColor: const Color.fromRGBO(74, 74, 74, 1),
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Currency Converter'),
        backgroundColor: Color.fromRGBO(74, 74, 74, 1),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '\$${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)} USD',
                  style: const TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 255, 255, 1))),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                placeholder: 'Please enter the amount in MXN: ',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              //button
              //raised
              //appear like a text
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 
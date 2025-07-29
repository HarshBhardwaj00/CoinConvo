// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// This is a StatefulWidget, which allows the UI to update dynamically.
// A separate State class (_CoinConvo) is used to manage internal state.
class MaterialAppp extends StatefulWidget {
  const MaterialAppp({super.key});

  @override
  State<MaterialAppp> createState() => _CoinConvo();
}

class _CoinConvo extends State<MaterialAppp> {
  // Stores the converted amount in INR
  double result = 0;

  // Controller for handling input from the TextField
  final TextEditingController textEditingController = TextEditingController();

  // Disposing the controller to free up resources when the widget is removed
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Reusable custom border style for the input field
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'CoinConvo',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ColoredBox(
          color: Colors.blueGrey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text displaying the converted INR result
                Text(
                  'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(1)}',
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                // Input field to enter amount in USD
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    hintText: 'Enter amount in USD',
                    hintStyle: const TextStyle(color: Colors.black87),
                    prefixIcon: const Icon(Icons.monetization_on),
                    prefixIconColor: Colors.black87,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                const SizedBox(height: 10),
                // Button to perform the conversion when pressed
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = double.parse(textEditingController.text) * 86.50;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        const WidgetStatePropertyAll(Colors.black87),
                    foregroundColor:
                        const WidgetStatePropertyAll(Colors.white),
                    minimumSize: const WidgetStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                    elevation: const WidgetStatePropertyAll(10),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: const Text('Convert'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


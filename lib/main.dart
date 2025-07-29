import 'package:currency_convertor/currency_convertor_material_app.dart';
import 'package:flutter/material.dart';

// Entry point of the app
void main() {
  runApp(MyApp());

  /*
    runApp is a Flutter function that takes a widget 
    and attaches it to the screen. 
    We must import the Flutter material package to use it.

    We used 'const' here to prevent unnecessary widget rebuilding 
    or class instantiation on hot reload or reruns.
  */
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*
    The 'key' parameter is optional but recommended in widgets. 
    It's useful for widget identity and preserving state.
    
    'required' keyword is not used here because Flutter's `StatelessWidget` 
    constructor already expects 'key' as optional — we don't have to mark it manually as required.
  */

  @override
  Widget build(BuildContext context) {
    // In Flutter, everything is a widget including MaterialApp, Scaffold, Center, etc.
    return const MaterialApp(
      home: MaterialAppp(),
    );

    /*
      MaterialApp is the root widget that sets up app-level settings.
      The 'home' property is used to define the first screen the user sees.

      Here, 'MaterialAppp()' is our custom widget defined in another file,
      which will be used as the homepage.

      Scaffold, Center, etc. are all widgets, and they are used 
      inside 'home' or 'body' to build the UI structure.
    */
  }
}

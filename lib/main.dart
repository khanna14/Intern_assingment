import 'package:flutter/material.dart';
import 'package:intern_assing/Page1.dart';
import 'Page2.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Page1.id,
      routes: {
        Page1.id : (context) => Page1(),
        Page2.id : (context) => Page2(),
        },

    );
  }
}

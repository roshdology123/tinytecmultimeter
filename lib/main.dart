import 'package:flutter/material.dart';
import 'package:tinytecmultimeter/Screens/output_page.dart';
void main() => runApp(TinyTecMultimeter());


class TinyTecMultimeter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tiny Tec Multimeter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: OutputPage(),
    );
  }
}

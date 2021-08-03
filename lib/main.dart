import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/screens/home_screen.dart';

void main() {
  runApp(MercuryOSApp());
}

class MercuryOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mercury Os UI Elements',
      theme: ThemeData(fontFamily: 'Raleway'),
      home: HomeScreen(),
    );
  }
}

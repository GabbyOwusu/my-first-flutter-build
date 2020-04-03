import 'package:flutter/material.dart';
import 'package:mynewapp/screens/started.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Started(),
        debugShowCheckedModeBanner: false,
        );
  }
}

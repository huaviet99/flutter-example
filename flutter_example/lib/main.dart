import 'package:flutter/material.dart';
import 'package:flutterexample/pages/detail.dart';
import 'package:flutterexample/pages/home.dart';
import 'my_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      title: 'Flutter Example',
      routes: {
        '/home' : (context) => Home(),
        '/detail': (context) => Detail()
      },
    );
  }
}

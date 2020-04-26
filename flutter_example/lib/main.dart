
import 'package:flutter/material.dart';
import 'package:flutterexample/app_state.dart';
import 'package:flutterexample/pages/detail.dart';
import 'package:flutterexample/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MyApp(),
    )
  );
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

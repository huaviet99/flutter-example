import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail Page'
        ),
      ),
      body: Center(
        child: Text(
          'This is detail page'
        ),
      ),
    );
  }
}

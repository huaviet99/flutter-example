import 'package:flutter/material.dart';
import 'package:flutterexample/app_state.dart';
import 'package:provider/provider.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Detail Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              DetailText(),
              DetailTextField()
            ],
          ),
        ));
  }
}

class DetailText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Container(
      child: Text(
          appState.getText
      ),
    );
  }
}

class DetailTextField extends StatefulWidget {
  @override
  _DetailTextFieldState createState() => _DetailTextFieldState();
}

class _DetailTextFieldState extends State<DetailTextField> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    
    return Container(
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Some text',
            border: OutlineInputBorder()
        ),
        onChanged: (change) => appState.setText(change),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert page'),),
        body: Center(
          child: RaisedButton(
            child: Text('Monstrar alerta'),
            onPressed: null),),
    );
  }
}
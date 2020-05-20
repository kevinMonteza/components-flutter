import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('alert page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('Monstrar alerta'),
            textColor: Colors.white,
            color: Colors.blue,
            shape: StadiumBorder(),
            onPressed: () => _showAlert(context),
          ),
        ));
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        title: Text('Titulo'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Este es el contenido'),
            FlutterLogo(size: 100.0),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancelar'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FlatButton(
            child: Text('ok'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }
}

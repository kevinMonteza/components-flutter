import 'package:componetsflutter/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() => FutureBuilder(
        future: menuProvider.uploadData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) => ListView(
          children: _listItems(snapshot.data),
        ),
      );

  List<Widget> _listItems(List<dynamic> data) {
    final List<Widget> datos = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(
          Icons.account_box,
          color: Colors.blue,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      );
      datos..add(widgetTemp)..add(Divider());
    });
    return datos;
  }
}

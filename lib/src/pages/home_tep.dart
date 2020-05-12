import 'package:flutter/material.dart';

class HomepageTemp extends StatelessWidget {
  final options = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component temp'),
      ),
      body: ListView(children: _createItems()),
    );
  }

  List<Widget> _createItems() => options.map( ( item ) {
        return Column(
          children: <Widget> [
            ListTile(
              title: Text(item + '!'),
              subtitle: Text('lo que sea'),
              leading: Icon(Icons.account_balance),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},
            ),
            Divider(),
          ]
        );
    }).toList();
}

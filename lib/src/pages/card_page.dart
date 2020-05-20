import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() => Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text("El titulo de la tarjeta"),
              subtitle: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      );

  Widget _cardTipo2() => Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                FadeInImage(
                  image: NetworkImage(
                      'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
                  placeholder: AssetImage('assets/original.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 310.0,
                  fit: BoxFit.cover,
                ),
                // Image(
                //   image: NetworkImage(
                //       'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
                // ),
                Padding(padding: EdgeInsets.only(top: 6.0)),
                Text("Aca va un texto que acompa;a a la imagen de fade in")
              ],
            ),
          ),
        ),
        padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0, bottom: 13.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color:Colors.white,
            boxShadow: <BoxShadow> [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 15.0,
                spreadRadius: 3.0,
                offset: Offset(2.0, 15.0)
              )
            ],
            ),
      );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
   double _valueSlider = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders')
      ),
      body: Container(
        child: Column(children: <Widget>[
          _crearSlider(),
          Expanded(
            child:  _crearImagen(),
          )
        ],),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valueSlider, 
      min: 10.0,
      max: 400.0,
      onChanged: (double valor) {
        setState(() {
          _valueSlider = valor;
        });
      });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://img.autocosmos.com/noticias/fotosprinc/NAZ_24192548c74948d8819ca28c594406b0.jpg'),
       width: _valueSlider,
      fit: BoxFit.contain,
    );
  }
}
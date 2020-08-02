import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';

  List _proderes = ['Volar', 'Rayos X', 'Super aliento', 'Super fuerza'];
  String optionSelected = 'Volar';
  TextEditingController _textField = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs de texto')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearPersona(),
          Divider(),
          _crearDate(context),
          Divider(),
          _crearDropdown(),
        ],
      ),
    );
  }

  _crearInput() => TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            counter: Text('Letras ${_nombre.length}'),
            hintText: 'Nombre del usuario',
            labelText: 'Nombre',
            helperText: 'Solo nombre',
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.account_circle)),
        onChanged: (value) {
          setState(() {
            _nombre = value;
          });
        },
  );

  _crearEmail() => TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (value) => setState(() {
            _email = value;
   }));

  Widget _crearPersona() => ListTile(
        title: Text('Nombre es: $_nombre'),
        subtitle: Text('Emil: $_email'),
        trailing: Text(optionSelected),
  );

  _crearPassword() => TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_outline),
          icon: Icon(Icons.lock)),
      onChanged: (value) => setState(() {
            _password = value;
   }));

  _crearDate(BuildContext context) => TextField(
      enableInteractiveSelection: false,
      controller: _textField,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Fecha',
          labelText: 'Fecha',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
  });

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2030),
        locale: Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _textField.text = _fecha;
      });
    }
  }
 
List<DropdownMenuItem<String>> getOptionsDropdown() {
  List<DropdownMenuItem<String>> lista = List();

  _proderes.forEach((element) {
    lista.add(
      DropdownMenuItem(
        child: Text(element),
        value: element,
      )
    );
  });
  return lista;
}

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        DropdownButton(
          value: optionSelected,
          items: getOptionsDropdown(),
          onChanged: (opt) {
          setState(() {
            optionSelected = opt;
          });
          },
        )
      ],
    );
 }
}

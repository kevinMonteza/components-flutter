
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {

  List<dynamic> options = [];


 // _MenuProvider(){}

   Future<List<dynamic>> uploadData() async{
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = jsonDecode( resp );
    options = dataMap['rutas'];
    return options;
  }

}

  final menuProvider = new _MenuProvider();

import 'package:componetsflutter/src/pages/card_page.dart';
import 'package:componetsflutter/src/routes/routes.dart';

// import 'package:componetsflutter/src/pages/home_tep.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components App',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print("Ruta seleccionada es: ${settings.name}");
        return MaterialPageRoute(
            builder: (BuildContext context) => CardPage());
      },
    );
  }
}

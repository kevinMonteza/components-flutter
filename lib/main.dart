
import 'package:componetsflutter/src/pages/card_page.dart';
import 'package:componetsflutter/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Spanish
      ],
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print("Ruta seleccionada es: ${settings.name}");
        return MaterialPageRoute(
            builder: (BuildContext context) => CardPage());
      },
    );
  }
}

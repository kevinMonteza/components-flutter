import 'package:componetsflutter/src/pages/alert_page.dart';
import 'package:componetsflutter/src/pages/animated_container.dart';
import 'package:componetsflutter/src/pages/avatart_page.dart';
import 'package:componetsflutter/src/pages/home_page.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> getAppRoutes() => <String, WidgetBuilder>{
          '/': (BuildContext context) => HomePage(),
          'alert': (BuildContext context) => AlertPage(),
          'avatar': (BuildContext context) => AvatarPage(),
          'animated': (BuildContext context) => AnimatedContainerPage(),
};


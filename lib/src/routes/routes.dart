import 'package:componente/src/pages/alert_pages.dart';
import 'package:componente/src/pages/avatars_pages.dart';
import 'package:componente/src/pages/cards_page.dart';
import 'package:componente/src/pages/home_page.dart';
import 'package:componente/src/pages/input_pages.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext ctx) => HomePage(),
    'alert': (BuildContext ctx) => AlertPage(),
    'avatar': (BuildContext ctx) => AvatarPage(),
    'card': (BuildContext ctx) => CardPage(),
    'inputs': (BuildContext ctx) => InputPage(),
  };
}

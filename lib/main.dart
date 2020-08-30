import 'package:componente/src/pages/alert_pages.dart';
import 'package:componente/src/pages/avatars_pages.dart';
import 'package:componente/src/pages/home_page.dart';
import 'package:componente/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'componente',
      //  home: Scaffold(body: HomePage()),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings setting) {
        return MaterialPageRoute(builder: (BuildContext ctx) => AlertPage());
      },
    );
  }
}

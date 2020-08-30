import 'package:componente/src/pages/alert_pages.dart';
import 'package:componente/src/providers/menu_providers.dart';
import 'package:componente/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProviders.cargardata(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaitem(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaitem(List<dynamic> data, BuildContext context) {
    final List<Widget> opc = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element["texto"]),
        leading: getIcon(element['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });
          // Navigator.push(context, route);
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opc..add(widgetTemp)..add(Divider());
    });

    return opc;
  }
}

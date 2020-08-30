import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("component temp")),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> listaWidget = new List<Widget>();

    for (var item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
      );
      listaWidget.add(tempWidget);
      listaWidget.add(Divider(
        color: Color(0xFF808080),
      ));
    }

    return listaWidget;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((e) {
      return ListTile(
        title: Text(e + '!'),
        subtitle: Text('subitulo'),
        leading: Icon(Icons.account_balance_wallet),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );
    }).toList();
  }
}

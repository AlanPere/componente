import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class MenuProviders {
  List<dynamic> opc = [];

  MenuProviders() {
    cargardata();
  }

  Future<List> cargardata() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    print(dataMap);
    opc = dataMap['rutas'];

    return opc;
  }
}

final menuProviders = new MenuProviders();

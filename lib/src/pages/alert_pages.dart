import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("alert title"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => mostrarAlerta(context),
          child: Text("mostrar alerta"),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.add_location),
      ),
    );
  }
}

void mostrarAlerta(BuildContext ctx) {
  showDialog(
      context: ctx,
      barrierDismissible: true,
      builder: (ctx) {
        return AlertDialog(
          title: Text("titulo"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("este es un texto"),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            FlatButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: Text("cancelar")),
            FlatButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: Text("aceptar")),
          ],
        );
      });
}

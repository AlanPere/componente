import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("input titlee"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        children: [
          crearInputs(),
          Divider(),
          crearEmail(),
          Divider(),
          crearPassword()
        ],
      ),
    );
  }

  Widget crearInputs() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          counter: Text('letras ${_nombre.length}'),
          hintText: "Nombre de la persona",
          labelText: 'Nombre',
          helperText: "solo el nombre en minuscula",
          icon: Icon(Icons.account_circle)),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  Widget crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: "Ingrese su email",
          labelText: 'email',
          helperText: "ingrese su email",
          icon: Icon(Icons.mail)),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: "Ingrese su password",
          labelText: 'password',
          helperText: "ingrese su password",
          icon: Icon(Icons.lock_open)),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }
}

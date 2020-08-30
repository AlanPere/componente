import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card title"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(context)
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Japon'),
            subtitle: Text('Uno de los paises mas excentricos'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('cancelar')),
              FlatButton(onPressed: () {}, child: Text('aceptar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2(BuildContext ctx) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Container(
            child: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () => mostrarAlerta(ctx),
            ),
            alignment: Alignment.topRight,
          ),
          // Image(
          //     image: NetworkImage(
          //         'https://www.state.gov/wp-content/uploads/2019/04/Japan-2107x1406.jpg')),
          // Container(padding: EdgeInsets.all(10), child: Text("hola"))
          FadeInImage(
            image: NetworkImage(
                'https://www.state.gov/wp-content/uploads/2019/04/Japan-2107x1406.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
          Container(padding: EdgeInsets.all(10), child: Text("Japon"))
        ],
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
          content: Text("esto es un texto"),
        );
      });
}

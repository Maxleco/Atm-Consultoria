import 'package:flutter/material.dart';

class ScreenContato extends StatefulWidget {
  @override
  _ScreenContatoState createState() => _ScreenContatoState();
}

class _ScreenContatoState extends State<ScreenContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/detalhe_contato.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Contato",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "atedimento@atmconsultoria.com.br"
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "Telefone: (11) 3525-8596"
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    "Celular: (11) 99586-5236"
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
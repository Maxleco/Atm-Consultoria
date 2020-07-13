import 'package:flutter/material.dart';

class ScreenCliente extends StatefulWidget {
  @override
  _ScreenClienteState createState() => _ScreenClienteState();
}

class _ScreenClienteState extends State<ScreenCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
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
                Image.asset("images/detalhe_cliente.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Clientes",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset("images/cliente1.png"),
                  Text("Empresa de Software"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset("images/cliente2.png"),
                  Text("Empresa de Auditoria"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
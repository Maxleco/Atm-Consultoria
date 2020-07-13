import 'package:flutter/material.dart';

class ScreenServico extends StatefulWidget {
  @override
  _ScreenServicoState createState() => _ScreenServicoState();
}

class _ScreenServicoState extends State<ScreenServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
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
                Image.asset("images/detalhe_servico.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Nossos Serviços",
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
                    "Consultoria"
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "Cálculo de preços"
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    "Aconpanhamento de projetos"
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
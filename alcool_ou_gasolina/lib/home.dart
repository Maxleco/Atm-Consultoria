import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _textControllerAlcool = TextEditingController();
  TextEditingController _textControllerGasolina = TextEditingController();
  String _textResultado = "";
  bool _erroAlcool = false;
  bool _erroGasolina = false;

  String _changePointDecinal(String text){
    return text.replaceFirst(",", ".");
  }

  void _calcular(){
    String alcool = _textControllerAlcool.text;
    String gasolina = _textControllerGasolina.text;

    if(alcool.isEmpty || gasolina.isEmpty){
      setState(() {
        _erroAlcool = alcool.isEmpty ? true : false;
        _erroGasolina = gasolina.isEmpty ? true : false;
      });
    }
    else{
      alcool  = _changePointDecinal(alcool);
      gasolina = _changePointDecinal(gasolina);

      double precoAlcool = double.parse(alcool);
      double precoGasolina = double.parse(gasolina);

      if((precoAlcool / precoGasolina) >= 0.7){
        setState(() {
          _textResultado = "Melhor abastecer com Gasolina";
        });
      }
      else{
        setState(() {
          _textResultado = "Melhor abastecer com Álcool";
        });
      }  
      _textControllerAlcool.text = "";
      _textControllerGasolina.text = "";
    }
    

    /* 
    ** Se o preço do álcool dividido pelo preço da gasolina
    ** for >= a 0.7 é melhor abastecer com gasolina
    ** senão é melhor utilizar álcool
    */

    

    //Limpar Campos
    

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("images/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                controller: _textControllerAlcool,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço Álcool, ex: 1.59",
                  labelStyle: TextStyle(fontFamily: "Arial"),
                  errorText: _erroAlcool == false ?
                    null : "Preencha o campo!",
                ),
                style: TextStyle(fontSize: 20, fontFamily: "Courier New"),
                onTap: (){
                  setState(() {
                    _erroAlcool = false;
                  });
                },
              ),
              TextField(
                controller: _textControllerGasolina,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço Gasolina, ex: 3.15",
                  labelStyle: TextStyle(fontFamily: "Arial"),
                  errorText: _erroGasolina == false ?
                    null : "Preencha o campo!",
                ),
                style: TextStyle(fontSize: 20, fontFamily: "Courier New"),
                onTap: (){
                  setState(() {
                    _erroGasolina = false;
                  });
                }
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: _calcular,
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "CALCULAR",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  _textResultado,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

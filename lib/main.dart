import 'package:atm_consultoria/ScreenContato.dart';
import 'package:atm_consultoria/ScreenEmpresa.dart';
import 'package:atm_consultoria/ScreenServico.dart';
import 'package:flutter/material.dart';

import 'ScreenCliente.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ATM Consultoria',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

enum Orientation { landscape, portrait }

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    Orientation orientation =
        size.width < size.height ? Orientation.portrait : Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
      ),
      body: orientation == Orientation.portrait
          ? _screenPortrait(size)
          : _screenLandscape(size),
    );
  }

  Widget _getImageOptions(double spacer, double pWidth, String urlImage,
      {Function pOnTap}) {
    return Padding(
      padding: EdgeInsets.all(spacer),
      child: Container(
        width: pWidth,
        height: (pWidth * 121) / 115,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage(urlImage),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            highlightColor: Colors.grey.withOpacity(0.16),
            splashColor: Colors.grey.withOpacity(0.5),
            onTap: pOnTap,
          ),
        ),
      ),
    );
  }

  Widget _screenPortrait(Size pSize) {
    Size size = pSize;
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.075,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: SizedBox(
              child: Image.asset("images/logo.png"),
            ),
          ),
          Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
              _getImageOptions(16, size.width * 0.3, "images/menu_empresa.png",
                  pOnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenEmpresa(),
                  ),
                );
              }),
              _getImageOptions(16, size.width * 0.3, "images/menu_servico.png",
                  pOnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenServico(),
                  ),
                );
              }),
              _getImageOptions(16, size.width * 0.3, "images/menu_cliente.png",
                  pOnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenCliente(),
                  ),
                );
              }),
              _getImageOptions(16, size.width * 0.3, "images/menu_contato.png",
                  pOnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenContato(),
                  ),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _screenLandscape(Size pSize) {
    Size size = pSize;
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.075,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: SizedBox(
              child: Image.asset("images/logo.png"),
            ),
          ),
          Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
              _getImageOptions(8, size.width * 0.15, "images/menu_empresa.png",
                  pOnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenEmpresa(),
                  ),
                );
              }),
              _getImageOptions(8, size.width * 0.15, "images/menu_servico.png",
                  pOnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenServico(),
                  ),
                );
              }),
              _getImageOptions(8, size.width * 0.15, "images/menu_cliente.png",
                  pOnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenCliente(),
                  ),
                );
              }),
              _getImageOptions(8, size.width * 0.15, "images/menu_contato.png",
                  pOnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScreenContato(),
                  ),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}

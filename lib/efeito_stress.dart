import 'package:flutter/material.dart';

class Efeito_Stress extends StatefulWidget {
  const Efeito_Stress({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Efeito_Stress> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Color.fromRGBO(57, 130, 111, 1),
      centerTitle: true,
      title: Image.asset("assets/appbar_logo.png"),
      leading: BackButton(
        color: Colors.teal[50],
      ),
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(20.0),
          minScale: 0.1,
          maxScale: 4.0,
          child: Image.asset(
            'assets/estresse_termico-removebg-preview.png',
          ),
        ),
      ),
    );
  }
}
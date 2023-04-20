import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Sobre_nos extends StatefulWidget {
  const Sobre_nos({super.key});

  @override
  State<Sobre_nos> createState() => _Sobre_nosState();
}

class _Sobre_nosState extends State<Sobre_nos> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/appbar_logo.png"),
      centerTitle: true,
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.teal[50],
          onPressed: () => Navigator.of(context).pop()),
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: const Text(
              "Equipe",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "OpenSans-Regular",
                  fontSize: 25,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:appbovconfort/sobre.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:sizer/sizer.dart';  
import 'package:appbovconfort/faixa1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - kBottomNavigationBarHeight);

    return Scaffold(
      backgroundColor: Colors.teal[50],
  
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Container(
              height: screenHeight * .22,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset('assets/Group 7.png'),
                    ),
                    const Text(
                      'BOVCONFORT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(57, 130, 111, 1),
                          fontSize: 37,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
            ),
            Container(
              height: screenHeight * .1,
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(top: screenHeight*.01),
              child: Center(child:Text(
                  'Descubra como evitar o desconforto\ntérmico em vacas de leite.',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontWeight: FontWeight.w800,fontSize: MediaQuery.of(context).size.width * 0.04)),
            )),
            Container(
                width: size.width * .9,
                height: screenHeight * .6,
                margin: EdgeInsets.only(top: screenHeight*.03),
                color: Color.fromRGBO(136, 221, 198, 1),
                padding: EdgeInsets.all(20),
                child: Center(
                    child:  Text(
                          'O objetivo do BovConfort é fornecer ferramentas para que criadores e profissionais das Ciências Agrárias possam identificar situações de estresse térmico para os animais, estabelecer estratégias de manejo para minimizar seus efeitos e estimar as perdas na produção de leite de uma forma objetiva e ágil.',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
                          textAlign: TextAlign.justify,
                      
                    ))),
          ]),
    );
  }
}

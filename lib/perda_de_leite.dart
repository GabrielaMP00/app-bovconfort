import 'package:flutter/material.dart';
import 'package:appbovconfort/browse.dart';
import 'package:appbovconfort/faixa2.dart';
import 'package:appbovconfort/faixa3.dart';
import 'package:appbovconfort/faixa4.dart';
import 'package:appbovconfort/faixa5.dart';
import 'package:appbovconfort/perda_vaca.dart';
import 'package:appbovconfort/perda_rebanho.dart';


class Perda_de_leite extends StatefulWidget {
  const Perda_de_leite({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Perda_de_leite> {
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
      backgroundColor: Colors.teal[50],
      appBar: appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: const Text(
              "CALCULAR PERDA \nESTIMADA DE LEITE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              "Selecione a opção desejada abaixo:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 75.0,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 200.0,
              height: 75.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PerdaVaca()));
                },
                child: Text(
                  "Cálculo\nIndividual",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff88ddc6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 200.0,
              height: 75.0,
              child: ElevatedButton(
                onPressed: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PerdaRebanho()));},
                child: Text(
                  "Cálculo do\nRebanho",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff88ddc6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:appbovconfort/faixa2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/passos_br.dart';
import 'package:appbovconfort/faixa3.dart';
import 'package:appbovconfort/faixa4.dart';
import 'package:appbovconfort/faixa5.dart';

class Resultado_leite extends StatefulWidget {
  const Resultado_leite({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Resultado_leite> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/appbar_logo.png"),
      centerTitle: true,
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    final ButtonStyle botaoLeite = ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.grey,
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
    return Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: appBar,
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
               Container(
                  height: screenHeight * .1,
                  width: size.width*.8,
                  margin: EdgeInsets.only(bottom: screenHeight * .05),
                  child: Center(
                    child: Text("Seu resultado de perda estimada de leite é:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w800,
                            )),
                  )),
              SizedBox(height: size.height*0.05),
                  Column(children: <Widget>[
                    Text("Máx Umidade Relativa",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: size.width*0.4,
                      height: size.height*0.1,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(4),
                        ],
                        decoration: const InputDecoration(
                            hintText: "0.00",
                            border: OutlineInputBorder(),
                            fillColor: Colors.white),
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ]),
                  SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: size.width * .1),
                  Container(
                width: size.width * .6,
                height: screenHeight * .1,
                child: ElevatedButton(
                  style: botaoLeite,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Resultado_leite()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Calcular Perda \n Estimada de Leite',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          )), // <-- Text
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        // <-- Icon
                        Icons.arrow_forward,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
                ],
              ),
              SizedBox(height: screenHeight * .01),
    ])));
  }
}


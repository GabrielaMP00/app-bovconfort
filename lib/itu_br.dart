
import 'package:appbovconfort/faixa2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/browse.dart';
import 'package:appbovconfort/itu_rs.dart';
import 'package:appbovconfort/passos_br.dart';
import 'package:appbovconfort/faixa2.dart';

class ITU_BR extends StatefulWidget {
  const ITU_BR({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ITU_BR> {
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
    final ButtonStyle botaoCalcular = ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromRGBO(136, 221, 198, 1),
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ));
    final ButtonStyle botaoAdicionar = ElevatedButton.styleFrom(
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
                 // color: Colors.blue,
                  height: screenHeight * .15,
                  //margin: EdgeInsets.only(bottom: screenHeight * .03),
                  
                    child: Text("CALCULE O ITU",
                        style: TextStyle(
                            fontSize: 22.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w800)),
                  ),
              Container(
                  //color: Colors.green,
                  height: screenHeight * .1,
                  margin: EdgeInsets.only(bottom: screenHeight * .01),
                  
                    child: Text("Insira os dados abaixo:",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600)),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    Text("Máx Temperatura",
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
                  Column(children: <Widget>[
                    Text("Min Temperatura",
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
                ],
              ),
              SizedBox(height: size.height*0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                  Column(children: <Widget>[
                    Text("Min Umidade Relativa",
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
                ],
              ),
              SizedBox(height: size.height*0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: size.width * .35,
                      height: screenHeight * .1,
                      //margin: EdgeInsets.only(bottom: screenHeight*.12),
                      child: ElevatedButton.icon(
                        style: botaoAdicionar,
                        onPressed: () => {},
                        icon: Icon(
                          Icons.plus_one,
                          size: 20,
                        ),
                        label: Text('Adicionar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w800,
                            )),
                      )),
                  SizedBox(width: size.width * .1),
                  Container(
                      width: size.width * .35,
                      height: screenHeight * .1,
                      child: ElevatedButton.icon(
                        style: botaoCalcular,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Faixa2()));
                        },
                        icon: Icon(
                          Icons.check,
                          size: 20,
                        ),
                        label: Text('Calcular',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w800,
                            )),
                      )),
                ],
              ),
              SizedBox(height: screenHeight * .01),
            ])));
  }
}


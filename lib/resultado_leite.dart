import 'package:appbovconfort/dados.dart';
import 'package:appbovconfort/faixa2.dart';
import 'package:appbovconfort/mitigar_efeitos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/passos_br.dart';
import 'package:appbovconfort/faixa3.dart';
import 'package:appbovconfort/faixa4.dart';
import 'package:appbovconfort/faixa5.dart';
import 'package:appbovconfort/leituras_comp.dart';
import 'package:appbovconfort/perda_vaca.dart';
import 'package:appbovconfort/perda_rebanho.dart';

class Resultado_leite extends StatefulWidget {
  final double dpl;

  const Resultado_leite({Key? key, required this.dpl}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Resultado_leite> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/novologo.png", height: 30.sp),
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
                //color: Colors.blue,
                height: screenHeight * .1,
                //margin: EdgeInsets.only(bottom: screenHeight * .03),
                child: Text("RESULTADO",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w800)),
              ),
              Container(
                  //color: Colors.green,
                  height: screenHeight * .1,
                  margin: EdgeInsets.only(bottom: screenHeight * .01),
                  child: Center(
                    child: Text("O valor estimado \nde perda de leite é:",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600)),
                  )),
              SizedBox(height: size.height * .07),
              Container(
                  height: screenHeight * .1,
                  width: size.width * .5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 168, 229, 213),
                  ),
                  //margin: EdgeInsets.only(bottom: screenHeight * .03),
                  child: Center(
                    child: Text("${widget.dpl.toStringAsFixed(2)}",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w400)),
                  )),
              SizedBox(height: size.height * .02),
              Container(
                  child: Center(
                      child: Text("Quilos/Dia",
                          style: TextStyle(fontSize: 12.sp)))),
              Container(
                  width: size.width * .35,
                  height: screenHeight * .2,
                  child: new Image.asset('assets/perdaleite.png')),
              SizedBox(height: size.height * .05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: size.width * .45,
                      height: screenHeight * .1,
                      //margin: EdgeInsets.only(bottom: screenHeight*.12),
                      child: ElevatedButton.icon(
                        style: botaoAdicionar,
                        onPressed: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 20,
                        ),
                        label: Text('Voltar\nao Início',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w800,
                            )),
                      )),
                  SizedBox(width: size.width * .05),
                  Container(
                      width: size.width * .45,
                      height: screenHeight * .1,
                      child: ElevatedButton(
                        style: botaoCalcular,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Mitigar_Efeitos()));
                        },
                         child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Dicas\nde Manejo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w800,
                        )), // <-- Text
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          // <-- Icon
                          Icons.arrow_forward,
                          size: 20.0,
                        ),
                      ],
                    ),
                      )),
                ],
              ),
              
              SizedBox(height: screenHeight * .01),
            ])));
  }
}

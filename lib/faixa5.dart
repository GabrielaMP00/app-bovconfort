import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/itu_br.dart';
import 'package:appbovconfort/faixa4.dart';
import 'package:appbovconfort/itu_rs.dart';
import 'package:appbovconfort/home.dart';
import 'package:appbovconfort/resultado_leite.dart';
import 'package:appbovconfort/perda_de_leite.dart';

class Faixa5 extends StatelessWidget {
  final double average;

  const Faixa5({Key? key, required this.average}) : super(key: key);

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
                  width: size.width * .8,
                  height: screenHeight * .15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromRGBO(255, 0, 0, 1)),
                  margin: EdgeInsets.only(bottom: screenHeight * .05),
                  child: Center(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                        Container(
                            height: screenHeight * .1,
                            child: new Image.asset("assets/cuidado.png")),
                        SizedBox(width: size.width * .02),
                        Container(
                            child: Text("SITUAÇÃO DE \nEMERGÊNCIA!",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w800)))
                      ]))),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      //color: Colors.orange,
                      height: screenHeight * .1,
                      width: size.width * .8,
                      alignment: Alignment.topRight,
                      //margin: EdgeInsets.only(bottom: screenHeight * .03),
                      child: Center(
                        child: Text("RESULTADO = ${average.toStringAsFixed(1)}",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 19.sp,
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w800)),
                      )),
                ],
              ),
              SizedBox(height: screenHeight * .05),
              Container(
                  width: size.width * .35,
                  height: screenHeight * .2,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(102, 118, 131, 1),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: new Image.asset('assets/vaca_triste.png')),
              SizedBox(height: screenHeight * .03),
              Container(
                  height: screenHeight * .05,
                  child: Center(
                    child: Text("ITU4 => 84",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w400)),
                  )),
              Container(
                  height: screenHeight * .1,
                  margin: EdgeInsets.only(bottom: screenHeight * .05),
                  child: Center(
                    child: Text("Condição de \n Estresse Térmico Crítico",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic)),
                  )),
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
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
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
                                  builder: (context) =>
                                      const Perda_de_leite()));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Calcular\nPerda de Leite',
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
            ])));
  }
}

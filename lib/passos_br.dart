import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/browse.dart';
import 'package:appbovconfort/itu_rs.dart';
import 'package:appbovconfort/itu_br.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://portal.inmet.gov.br/');

class Passos_BR extends StatefulWidget {
  const Passos_BR({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Passos_BR> {
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
        backgroundColor: Colors.grey,
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ));
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
                    child: Text("CALCULE O ITU",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w800)),
                  ),
              Container(
                  //color: Colors.green,
                  height: screenHeight * .1,
                  margin: EdgeInsets.only(bottom: screenHeight * .01),
                    child: Text("Siga os passos abaixo:",
                        style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600)),
              ),
              Container(
                  height: screenHeight * .35,
                  width: size.width * .9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 168, 229, 213),),
                  //margin: EdgeInsets.only(bottom: screenHeight * .03),
                  child: Center(
                    child: Text(
                        " 1. Acesse o Site do INMET/SISDAGRO \n 2. Selecione sua localidade \n 3. Escolha de um a cinco dias para calcular \n 4. Digite os valores de Temperatura Máxima e Temperatura Mínima\n 5. Digite os valores Umidade Relativa Máxima e Umidade Relativa Mínima",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w400)),
                  )),
                  SizedBox(height: size.height*.02),
              Container(
                  //color: Colors.white,
                  height: screenHeight * .12,
                  //margin: EdgeInsets.only(bottom: screenHeight * .01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      TextButton(
                        onPressed: _launchUrl,
                        child: Text(
                          "Site do INMET",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 14.sp,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        )),
                        Image(image: AssetImage("assets/click.png"), height: size.height*.05)
                ])),
              SizedBox(height: size.height*.04),
              Container(
                  width: size.width * .6,
                  height: screenHeight * .1,
                  child: ElevatedButton(
                    style: botaoCalcular,
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ITU_BR()));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Inserir Valores',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w800,
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
                  ),),
              SizedBox(height: screenHeight * .01),
            ])));
  }
      void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not Open $_url';
  }
}
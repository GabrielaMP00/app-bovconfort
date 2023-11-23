import 'package:appbovconfort/Tabela.dart';
import 'package:appbovconfort/leituras_comp.dart';
import 'package:flutter/material.dart';
import 'package:appbovconfort/browse.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/resultado_leite.dart';
import 'package:appbovconfort/efeito_stress.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:appbovconfort/mitigar_efeitos.dart';

class Dados extends StatefulWidget {
  const Dados({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Dados> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Color.fromRGBO(57, 130, 111, 1),
      centerTitle: true,
      title: Image.asset("assets/novologo.png", height: 30.sp),
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
        body: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          FloatingActionButton.large(
                              backgroundColor: Color.fromRGBO(136, 221, 198, 1),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Tabela()));
                              },
                              child: Image(
                                image: AssetImage("assets/table.png"),
                                height: size.height * .1,
                              )),
                          SizedBox(height: screenHeight * .02),
                          Text(
                            'Tabela de \n Valores e Faixas\ndo ITU',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.black),
                          )
                        ]),
                        Column(children: [
                          FloatingActionButton.large(
                              backgroundColor: Color.fromRGBO(136, 221, 198, 1),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Efeito_Stress()));
                              },
                              child: Image(
                                image: AssetImage("assets/termometro.png"),
                                height: size.height * .1,
                              )),
                          SizedBox(height: screenHeight * .02),
                          Text(
                            'Efeitos do \nEstresse\nTérmico',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.black),
                          )
                        ])
                      ]),
                  SizedBox(height: size.height * .08),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          FloatingActionButton.large(
                              backgroundColor: Color.fromRGBO(136, 221, 198, 1),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Mitigar_Efeitos()));
                              },
                              child: Image(
                                image: AssetImage("assets/pagina.png"),
                                height: size.height * .1,
                              )),
                          SizedBox(height: screenHeight * .02),
                          Text(
                            'Estratégias para evitar\nEstresse Térmico',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.black),
                          )
                        ]),
                        Column(children: [
                          FloatingActionButton.large(
                              backgroundColor: Color.fromRGBO(136, 221, 198, 1),
                              onPressed: () {
                                const url =
                                    'https://www.agricultura.rs.gov.br/agrometeorologia';
                                launch(url,
                                    forceWebView: false, forceSafariVC: false);
                              },
                              child: Image(
                                image: AssetImage("assets/book.png"),
                                height: size.height * .1,
                              )),
                          SizedBox(height: screenHeight * .02),
                          Text(
                            'Leitura \nComplementar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.black),
                          )
                        ])
                      ]),
                ])));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/browse.dart';
import 'package:appbovconfort/itu_br.dart';
import 'package:appbovconfort/passos_br.dart';

class ITU_RS extends StatefulWidget {
  const ITU_RS({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ITU_RS> {
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
                  //color: Colors.blue,
                  height: screenHeight * .12,
                  //margin: EdgeInsets.only(bottom: screenHeight * .03),
                  child: Center(
                    child: Text("CALCULE O ITU",
                        style: TextStyle(
                            fontSize: 22.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w800)),
                  )),
              Container(
                  //color: Colors.green,
                  height: screenHeight * .05,
                  margin: EdgeInsets.only(bottom: screenHeight * .03),
                  child: Center(
                    child: Text("Siga os passos abaixo:",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600)),
                  )),
              Container(
                  height: screenHeight * .25,
                  width: size.width * .85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.teal[100]),
                  //margin: EdgeInsets.only(bottom: screenHeight * .03),
                  child: Center(
                    child: Text(
                        " 1. Acesse o Site do SIMAGRO \n 2. Selecione sua localidade \n 3. Escolha de um a cinco valores do ITU na(s) data(s) desejada(s) no gráfico \n 4. Digite o valor do ITU abaixo",
                        style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w400)),
                  )),
              Container(
                  //color: Colors.white,
                  height: screenHeight * .12,
                  margin: EdgeInsets.only(bottom: screenHeight * .03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      TextButton(
                        onPressed: () {
                          
                        },
                        child: Text(
                          "Site do SIMAGRO",
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
              Row(
                children: <Widget>[
                  Container(
                      //color: Colors.orange,
                      height: screenHeight * .1,
                      width: size.width * .5,
                      alignment: Alignment.topRight,
                      //margin: EdgeInsets.only(bottom: screenHeight * .03),
                      child: Center(
                        child: Text("ITU   = ",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 25.sp,
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w700)),
                      )),
                  SizedBox(
                    width: 160,
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
                ],
              ),
              SizedBox(height: screenHeight * .07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: size.width * .35,
                      height: screenHeight * .1,
                      //margin: EdgeInsets.only(bottom: screenHeight*.12),
                      child: ElevatedButton.icon(
                        style: botaoAdicionar,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Passos_BR()));
                        },
                        icon: Icon(
                          Icons.plus_one,
                          size: 20,
                        ),
                        label: Text('Adicionar Novo Valor de ITU',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w800,
                            )),
                      )),
                  SizedBox(width: size.width * .1),
                  Container(
                      width: size.width * .35,
                      height: screenHeight * .1,
                      child: ElevatedButton.icon(
                        style: botaoCalcular,
                        onPressed: () => {},
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
              SizedBox(height: screenHeight * .05),
            ])));
  }
}

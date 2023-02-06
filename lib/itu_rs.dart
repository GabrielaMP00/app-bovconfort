import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/browse.dart';

class ITU_RS extends StatefulWidget {
  const ITU_RS({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ITU_RS> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Color.fromRGBO(57, 130, 111,1),
      title: Image.asset("assets/appbar_logo.png"),
      centerTitle: true,
    );
    var size = MediaQuery.of(context).size;
    var screenHeight =
        (size.height - kToolbarHeight - kBottomNavigationBarHeight) -
            MediaQuery.of(context).padding.top;
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Color.fromRGBO(136, 221, 198, 1),
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
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
                  Container(
                    color: Colors.blue,
                    height: screenHeight * .12,
                    //margin: EdgeInsets.only(bottom: screenHeight * .03),
                    child: Center(
                      child:Text("DESCUBRA O ITU",
                        style: TextStyle(fontSize: 25.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w700)),
                  )),
                  
                  Container(
                    width: size.width * .8,
                    height: screenHeight * .05,
                    color: Colors.red[200],
                    margin: EdgeInsets.only(bottom: screenHeight * .05),
                    alignment: Alignment.center,
                    child: Text(
                      'ITU = Índice de Temperatura e Umidade',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontStyle: FontStyle.italic,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    height: screenHeight * .05,
                    //margin: EdgeInsets.only(bottom: screenHeight * .03),
                    child: Center(
                      child:Text("Siga os passos abaixo:",
                        style: TextStyle(fontSize: 16.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w600)),
                  )),
                  Container(
                    color: Colors.yellow,
                    height: screenHeight * .25,
                    width: size.width * .8,
                    //margin: EdgeInsets.only(bottom: screenHeight * .03),
                    child: Center(
                      child:Text(" 1. Acesse o Site da SIMAGRO \n 2. Selecione sua localidade \n 3. Escolha de um a cinco valores do ITU na(s) data(s) desejada(s) no gráfico \n 4.Digite o valor do ITU abaixo",
                        style: TextStyle(fontSize: 13.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w400)),
                  )),
                  Container(
                    color: Colors.white,
                    height: screenHeight * .12,
                    //margin: EdgeInsets.only(bottom: screenHeight * .03),
                    child: Center(
                      child:TextButton( 
                        onPressed: () {  }, 
                        child: Text("Clique aqui para acessar \n o site da SIMAGRO",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontStyle: FontStyle.italic,fontSize: 14.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w700, color: Colors.red),)),
                    ))
                ])));
  }
}

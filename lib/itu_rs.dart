import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/browse.dart';
import 'package:appbovconfort/itu_br.dart';

class ITU_RS extends StatefulWidget {
  const ITU_RS({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ITU_RS> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111,1),
      title: Image.asset("assets/appbar_logo.png"),
      centerTitle: true,
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) - MediaQuery.of(context).padding.top;
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: const Color.fromRGBO(136, 221, 198, 1),
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
                    child: Center(
                      child:Text("DESCUBRA O ITU - RS",
                        style: TextStyle(fontSize: 25.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w700)),
                  )),
                  
                  Container(
                    width: size.width * .7,
                    height: screenHeight * .05,
                    margin: EdgeInsets.only(bottom: screenHeight * .04),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.teal[100]),
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
                    //color: Colors.green,
                    height: screenHeight * .05,
                    margin: EdgeInsets.only(bottom: screenHeight * .01),
                    child: Center(
                      child:Text("Siga os passos abaixo:",
                        style: TextStyle(fontSize: 16.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w600)),
                  )),
                  Container(
                    height: screenHeight * .25,
                    width: size.width * .85,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.yellow[200]),
                    //margin: EdgeInsets.only(bottom: screenHeight * .03),
                    child: Center(
                      child:Text(" 1. Acesse o Site da SIMAGRO \n 2. Selecione sua localidade \n 3. Escolha de um a cinco valores do ITU na(s) data(s) desejada(s) no gráfico \n 4.Digite o valor do ITU abaixo",
                        style: TextStyle(fontSize: 13.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w400)),
                  )),
                  Container(
                    //color: Colors.white,
                    height: screenHeight * .12,
                    margin: EdgeInsets.only(bottom: screenHeight * .03),
                    child: Center(
                      child:TextButton( 
                        onPressed: () {  }, 
                        child: Text("Clique aqui para acessar \n o site da SIMAGRO",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontStyle: FontStyle.italic,fontSize: 14.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w700, color: Colors.red),)),
                    )),
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
                          style: TextStyle(fontSize: 25.sp, fontFamily: "OpenSans", fontWeight: FontWeight.w700)),
                      )),
                      SizedBox(
                        width: 160,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                            ],
                            decoration: const InputDecoration( hintText: "0.00", border: OutlineInputBorder(), fillColor: Colors.white),
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
                      width: size.width *.35,
                      height: screenHeight * .1,
                      //margin: EdgeInsets.only(bottom: screenHeight*.12),
                      child: ElevatedButton.icon(
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ITU_BR()));
                        },
                        icon: Icon(Icons.plus_one, size: 20,),
                        label: Text('Adicionar', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w800, )),
                      )
                    
                  ),
                  SizedBox(width: size.width * .1),
                  Container(
                      width: size.width *.35,
                      height: screenHeight * .1,
                      child: ElevatedButton.icon(
                        style: raisedButtonStyle,
                        onPressed: () => {},
                        icon: Icon(Icons.check, size: 20,),
                        label: Text('Calcular', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w800, )),
                      )
                    
                  ),
                  ],),
                  SizedBox(height: screenHeight * .05),
                ])));
  }
}

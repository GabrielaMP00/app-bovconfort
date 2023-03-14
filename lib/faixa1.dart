import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/itu_br.dart';
import 'package:appbovconfort/passos_br.dart';
import 'package:appbovconfort/itu_rs.dart';
import 'package:appbovconfort/home.dart';

class Faixa1 extends StatefulWidget {
  const Faixa1({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Faixa1> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/appbar_logo.png"),
      centerTitle: true,
    );
    var size = MediaQuery.of(context).size;
    var screenHeight =
        (size.height - kToolbarHeight - kBottomNavigationBarHeight) -
            MediaQuery.of(context).padding.top;
    final ButtonStyle botaoVoltar = ElevatedButton.styleFrom(
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
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), color: Colors.blue),
                  margin: EdgeInsets.only(bottom: screenHeight * .1),
                  child: Center(
                    child: Text("FAIXA DENTRO DO \nCONFORTO TÉRMICO", textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: "OpenSans",
                            
                            fontWeight: FontWeight.w700)),
                  )),
              
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      //color: Colors.orange,
                      height: screenHeight * .1,
                      width: size.width * .5,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(bottom: screenHeight * .03),
                      child: Center(
                        child: Text("RESULTADO = ",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 19.sp,
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w800)),
                      )),
                  SizedBox(
                    width: 120,
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
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * .07),
              Container(
                      width: size.width * .35,
                      height: screenHeight * .2,
                      decoration: BoxDecoration(color: Color.fromRGBO(102, 118, 131, 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: new Image.asset('assets/vaca_feliz2.png')),
              SizedBox(height: screenHeight * .03),
              Container(
                  height: screenHeight * .06,
                  child: Center(
                    child: Text("ITU1 <= 70", textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: "OpenSans",
                            
                            fontWeight: FontWeight.w400)),
                  )
              ),
              Container(
                  height: screenHeight * .13,
                  margin: EdgeInsets.only(bottom: screenHeight * .05),
                  child: Center(
                    child: Text("Faixa dentro do \n Conforto Térmico", textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "OpenSans",
                            
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic)),
                  )
              ),
            
            ])));
  }
}

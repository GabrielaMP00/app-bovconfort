import 'package:appbovconfort/browse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/itu_br.dart';
import 'package:appbovconfort/passos_br.dart';
import 'package:appbovconfort/itu_rs.dart';
import 'package:appbovconfort/home.dart';
import 'package:appbovconfort/sobre.dart';

class Faixa1 extends StatelessWidget {
  final double sum;

  const Faixa1({Key? key, required this.sum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/novologo.png", height: 30.sp),
      centerTitle: true,
    );
    var size = MediaQuery.of(context).size;
    var screenHeight =
        (size.height - kToolbarHeight - kBottomNavigationBarHeight) -
            MediaQuery.of(context).padding.top;
    final ButtonStyle botaoInicio = ElevatedButton.styleFrom(
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
                    color: Colors.blue),
                margin: EdgeInsets.only(bottom: screenHeight * .05),
                child: Center(
                  child: Text("FAIXA DENTRO DO \nCONFORTO TÉRMICO",
                      textAlign: TextAlign.center,
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
                    width: size.width * .8,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(bottom: screenHeight * .03),
                    child: Center(
                      child: Text("RESULTADO = $sum",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w800)),
                    )),
              ],
            ),
            SizedBox(height: screenHeight * .07),
            Container(
                width: size.width * .35,
                height: screenHeight * .2,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(102, 118, 131, 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: new Image.asset('assets/vaca_feliz2.png')),
            SizedBox(height: screenHeight * .03),
            Container(
                height: screenHeight * .06,
                child: Center(
                  child: Text("ITU1 <= 71",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w400)),
                )),
            Container(
                height: screenHeight * .13,
                margin: EdgeInsets.only(bottom: screenHeight * .05),
                child: Center(
                  child: Text("Faixa dentro do \n Conforto Térmico",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.italic)),
                )),
            Container(
              width: size.width * .6,
              height: screenHeight * .1,
              child: ElevatedButton(
                style: botaoInicio,
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     Icon(
                      // <-- Icon
                      Icons.arrow_back,
                      size: 24.0,
                    ),
                    Text('Voltar ao início',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        )), // <-- Text
                    SizedBox(
                      width: 5,
                    ),
                   
                  ],
                ),
              ),
            ),
          ])),
     
    );
  }
}

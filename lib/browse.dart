import 'package:appbovconfort/itu_rs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appbovconfort/dados.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/itu_rs.dart';
import 'package:appbovconfort/internet.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/novologo.png", height: 30.sp),
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
                    height: screenHeight * .12,
                    margin: EdgeInsets.only(bottom: screenHeight * .03),
                    child: Text("O que você deseja fazer?",
                        style:
                            TextStyle(fontSize: 20.sp, fontFamily: "OpenSans")),
                  ),
                  Container(
                      width: size.width * .7,
                      height: screenHeight * .2,
                      margin: EdgeInsets.only(bottom: screenHeight * .1),
                      child: ElevatedButton.icon(
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dados()));
                        },
                        icon: Icon(
                          Icons.search,
                          size: 50,
                        ),
                        label: Text('Entender sobre Conforto Térmico Bovino',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w800,
                            )),
                      )),
                  Container(
                      width: size.width * .7,
                      height: screenHeight * .2,
                      margin: EdgeInsets.only(bottom: screenHeight * .1),
                      child: ElevatedButton.icon(
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Internet()));
                        },
                        icon: Icon(
                          Icons.calculate,
                          size: 50,
                        ),
                        label: Text('Calcular o ITU',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w800)),
                      )),
                  Container(
                    width: size.width * .8,
                    height: screenHeight * .05,
                    color: Colors.red[200],
                    alignment: Alignment.center,
                    child: Text(
                      'ITU = Índice de Temperatura e Umidade',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontStyle: FontStyle.italic,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ])));
  }
}

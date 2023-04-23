import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/resultado_leite.dart';
import 'package:appbovconfort/dados.dart';

class Leituras_comp extends StatefulWidget {
  const Leituras_comp({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Leituras_comp> {
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
                height: screenHeight * .2,
                child: Center(
                  child: Text("LEITURAS\nCOMPLEMENTARES",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w800), textAlign: TextAlign.center,))
              ),
              Container(
                //color: Colors.green,
                height: screenHeight * .6,
                width: size.width * .9,
                margin: EdgeInsets.only(bottom: screenHeight * .01),
                
                child: Center(child:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum feugiat eros ac urna vehicula, vitae pulvinar dolor lacinia. Quisque at mollis odio. Sed sit amet leo enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In tincidunt blandit lacus sed molestie. Donec eget maximus erat, in interdum ex. Donec vel enim a nunc bibendum egestas quis vel velit. ",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600), textAlign: TextAlign.justify),
              )),
              
              SizedBox(height: size.height * .1),
              
            ])));
  }
}

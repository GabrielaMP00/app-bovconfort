import 'package:appbovconfort/informa%C3%A7oes.dart';
import 'package:flutter/material.dart';
import 'package:appbovconfort/browse.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/itu_simples.dart';
import 'package:appbovconfort/localizacao.dart';
import 'package:appbovconfort/passos_br.dart';

class Internet extends StatefulWidget {
  const Internet({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Internet> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/novologo.png", height: 30.sp),
      centerTitle: true,
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.teal[50],
          onPressed: () => Navigator.of(context).pop()),
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: const Text(
              "Você está com acesso à internet?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.black),
            )),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.resolveWith<Size?>(
                      (states) => Size(125, 50)),
                  shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                      (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => Color(0xff88ddc6)),
                  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => Colors.black),
                  textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (states) => TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w700,
                          ))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Passos_BR()));
              },
              child: const Text("Sim")),
          const SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.resolveWith<Size?>(
                      (states) => Size(125, 50)),
                  shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                      (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => Color(0xff88ddc6)),
                  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (states) => Colors.black),
                  textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (states) => TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w700,
                          ))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ITU_Simples()));
              },
              child: const Text("Não"))
        ],
      ),
    ));
  }
}

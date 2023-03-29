import 'package:flutter/material.dart';
import 'package:appbovconfort/browse.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/itu_rs.dart';
import 'package:appbovconfort/itu_br.dart';

class Localizacao extends StatefulWidget {
  const Localizacao({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Localizacao> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/appbar_logo.png"),
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
      appBar: appBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: const Text(
              "Você esta localizado(a) no Rio Grande do Sul?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "OpenSans-Regular",
                  fontSize: 25,
                  color: Colors.black),
            ),
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
                    MaterialPageRoute(builder: (context) => const ITU_RS()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ITU_BR()));
              },
              child: const Text("Não"))
        ],
      ),
    ));
  }
}

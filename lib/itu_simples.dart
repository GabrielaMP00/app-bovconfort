import 'package:appbovconfort/faixa1_simples.dart';
import 'package:appbovconfort/faixa2_simples.dart';
import 'package:appbovconfort/faixa3_simples.dart';
import 'package:appbovconfort/faixa4_simples.dart';
import 'package:appbovconfort/faixa5_simples.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/browse.dart';
import 'dart:math' as math;

class ITU_Simples extends StatefulWidget {
  const ITU_Simples({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ITU_Simples> {
  TextEditingController tmController = TextEditingController();
  TextEditingController urController = TextEditingController();
  bool isButtonDisabled = true;

  void calculateITU() {
    if (tmController.text.isNotEmpty && urController.text.isNotEmpty) {
      double tm = double.parse(tmController.text);
      double ur = double.parse(urController.text);

      double tpo = (math.pow(ur / 100, 1 / 8)) * (112 + (0.9 * tm)) + (0.1 * tm) - 112;
      double itu = tm + (0.36 * tpo) + 41.5;

      if (itu <= 71) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa1Simples(itu: itu)),
        );
      } else if (itu > 71 && itu <= 75) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa2Simples(itu: itu)),
        );
      } else if (itu > 75 && itu <= 79) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa3Simples(itu: itu)),
        );
      } else if (itu > 79 && itu <= 84) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa4Simples(itu: itu)),
        );
      } else if (itu > 84) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa5Simples(itu: itu)),
        );
      } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter values in both fields.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    }
  }

  void checkInputFields() {
    setState(() {
      isButtonDisabled = tmController.text.isEmpty || urController.text.isEmpty;
    });
  }

  @override
  void dispose() {
    tmController.dispose();
    urController.dispose();
    super.dispose();
  }

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
        backgroundColor: const Color.fromRGBO(136, 221, 198, 1),
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
                    child: Text("Insira abaixo os valores indicados:",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600)),
                  )),
              SizedBox(height: screenHeight * .05),
              Container(
                margin: EdgeInsets.only(bottom: screenHeight * .03),
                child: Center(
                  child: Text("Temperatura média (ºC):",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w800)),
                ),
              ),
              SizedBox(
                width: size.width * 0.4,
                height: size.height * 0.1,
                child: TextField(
                    controller: tmController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "0.00",
                        border: OutlineInputBorder(),
                        fillColor: Colors.white), onChanged: (value) => checkInputFields()), 
              ),
              SizedBox(height: screenHeight * .05),
              Container(
                margin: EdgeInsets.only(bottom: screenHeight * .03),
                child: Center(
                  child: Text("Umidade Relativa do Ar (%):",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w800)),
                ),
              ),
              SizedBox(
                width: size.width * 0.4,
                height: size.height * 0.1,
                child: TextField(
                  controller: urController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "0.00",
                      border: OutlineInputBorder(),
                      fillColor: Colors.white), onChanged: (value) => checkInputFields()
                ),
              ),
              SizedBox(height: screenHeight * .1),
              Container(
                  width: size.width * .35,
                  height: screenHeight * .1,
                  child: ElevatedButton.icon(
                    style: botaoCalcular,
                    onPressed: isButtonDisabled ? null : calculateITU,
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
              SizedBox(height: screenHeight * .05),
            ])));
  }
}

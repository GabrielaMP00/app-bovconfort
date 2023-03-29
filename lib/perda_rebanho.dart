import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appbovconfort/perda_de_leite.dart';
import 'package:appbovconfort/resultado_leite.dart';

class PerdaRebanho extends StatefulWidget {
  const PerdaRebanho({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<PerdaRebanho> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Color.fromRGBO(57, 130, 111, 1),
      centerTitle: true,
      title: Image.asset("assets/appbar_logo.png"),
      leading: BackButton(
        color: Colors.teal[50],
      ),
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.teal[50],
        appBar: appBar,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: const Text(
                  "CALCULAR PERDA \nESTIMADA DE LEITE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
  
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Text(
                  "Coloque o valor médio de \nprodução do Rebanho em litros:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 75.0,
              ),
              Container(
                width: 300.0,
                alignment: Alignment.bottomCenter,
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4),
                  ],
                  decoration: InputDecoration(
                      hintText: "0.00",
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      fillColor: Colors.white),
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: SizedBox(
                  width: 150.0,
                  height: 70.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Resultado_leite()));
                    },
                    child: Text(
                      "Calcular",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff88ddc6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ),
            ]));
  }
}
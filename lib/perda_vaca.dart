import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PerdaVaca extends StatefulWidget {
  const PerdaVaca({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<PerdaVaca> {
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
                  "Calcular Perda Estimada de Leite",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "OpenSans-Regular",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Text(
                  "Coloque o valor médio de produção da Vaca em litros:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "OpenSans-Regularr",
                    fontSize: 25,
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
                    onPressed: () {},
                    child: Text(
                      "Calcular",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "OpenSans-Regular",
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

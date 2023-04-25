import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
<<<<<<< HEAD
=======
import 'package:appbovconfort/perda_de_leite.dart';
import 'package:appbovconfort/resultado_leite.dart';
import 'package:sizer/sizer.dart';
>>>>>>> 3f3c561ad3b6106b0ceb48f6ea5ab9def1a7babc

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
<<<<<<< HEAD
      title: Image.asset("assets/appbar_logo.png"),
=======
      title: Image.asset("assets/novologo.png", height: 30.sp),
>>>>>>> 3f3c561ad3b6106b0ceb48f6ea5ab9def1a7babc
      leading: BackButton(
        color: Colors.teal[50],
      ),
    );
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Scaffold(
<<<<<<< HEAD
=======
      backgroundColor: Colors.teal[50],
>>>>>>> 3f3c561ad3b6106b0ceb48f6ea5ab9def1a7babc
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
<<<<<<< HEAD
                  "Calcular Perda Estimada de Leite",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "OpenSans-Regular",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
=======
                  "CALCULAR PERDA \nESTIMADA DE LEITE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
  
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
>>>>>>> 3f3c561ad3b6106b0ceb48f6ea5ab9def1a7babc
                  ),
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Text(
<<<<<<< HEAD
                  "Coloque o valor médio de produção do Rebanho em litros:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "OpenSans-Regularr",
                    fontSize: 25,
=======
                  "Coloque o valor médio de \nprodução do Rebanho em litros:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
>>>>>>> 3f3c561ad3b6106b0ceb48f6ea5ab9def1a7babc
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
<<<<<<< HEAD
                    onPressed: () {},
=======
                    onPressed: () {
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Resultado_leite()));
                    },
>>>>>>> 3f3c561ad3b6106b0ceb48f6ea5ab9def1a7babc
                    child: Text(
                      "Calcular",
                      textAlign: TextAlign.center,
                      style: TextStyle(
<<<<<<< HEAD
                        fontFamily: "OpenSans-Regular",
=======
>>>>>>> 3f3c561ad3b6106b0ceb48f6ea5ab9def1a7babc
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
<<<<<<< HEAD
}
=======
}
>>>>>>> 3f3c561ad3b6106b0ceb48f6ea5ab9def1a7babc

import 'package:appbovconfort/faixa1.dart';
import 'package:appbovconfort/faixa2.dart';
import 'package:appbovconfort/faixa3.dart';
import 'package:appbovconfort/faixa4.dart';
import 'package:appbovconfort/faixa5.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:appbovconfort/browse.dart';
import 'package:appbovconfort/itu_rs.dart';
import 'package:appbovconfort/passos_br.dart';
import 'dart:math' as math;
import 'dataHolder.dart';

class ITU_BR extends StatefulWidget {
  const ITU_BR({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class Temperature {
  final double min;
  final double max;

  Temperature({required this.min, required this.max});
}

class Humidity {
  final double min;
  final double max;

  Humidity({required this.min, required this.max});
}

class _HomeState extends State<ITU_BR> {
  List<Temperature> temperatures = [];
  List<Humidity> humidities = [];
  TextEditingController minTempController = TextEditingController();
  TextEditingController maxTempController = TextEditingController();
  TextEditingController minHumidityController = TextEditingController();
  TextEditingController maxHumidityController = TextEditingController();

  bool isButtonDisabled = true;
  int valueCount = 0;

  double calculateAverageTemperature() {
    double sum = 0;
    for (var temperature in temperatures) {
      sum += (temperature.min + temperature.max) / 2;
    }
    return sum / temperatures.length;
  }

  double calculateAverageHumidity() {
    double sum = 0;
    for (var humidity in humidities) {
      sum += (humidity.min + humidity.max) / 2;
    }
    return sum / humidities.length;
  }

  void calculateITU() {
    if (temperatures.isNotEmpty && humidities.isNotEmpty) {
      double avgTemperature = calculateAverageTemperature();
      double avgHumidity = calculateAverageHumidity();

      double tpo = (math.pow(avgHumidity / 100, 1 / 8)) *
              (112 + (0.9 * avgTemperature)) +
          (0.1 * avgTemperature) -
          112;
      double itu = avgTemperature + (0.36 * tpo) + 41.5;

      DataHolder().average = itu;

      if (itu <= 71) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa1(itu: itu)),
        );
      } else if (itu > 71 && itu <= 75) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa2(itu: itu)),
        );
      } else if (itu > 75 && itu <= 79) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa3(itu: itu)),
        );
      } else if (itu > 79 && itu <= 84) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa4(itu: itu)),
        );
      } else if (itu > 84) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Faixa5(itu: itu)),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Erro'),
              content: Text(
                  'Por favor, adicione valores para temperatura e umidade.'),
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

  void addValues() {
    double minTemp = double.parse(minTempController.text);
    double maxTemp = double.parse(maxTempController.text);
    double minHumidity = double.parse(minHumidityController.text);
    double maxHumidity = double.parse(maxHumidityController.text);

    Temperature temperature = Temperature(min: minTemp, max: maxTemp);
    Humidity humidity = Humidity(min: minHumidity, max: maxHumidity);

    setState(() {
      temperatures.add(temperature);
      humidities.add(humidity);

      valueCount++;

      if (valueCount == 1) {
        isButtonDisabled = false;
      }

      if (valueCount >= 5) {
        isButtonDisabled = true;
      }
    });

    minTempController.clear();
    maxTempController.clear();
    minHumidityController.clear();
    maxHumidityController.clear();
  }

  @override
  void dispose() {
    minTempController.dispose();
    maxTempController.dispose();
    minHumidityController.dispose();
    maxHumidityController.dispose();
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
    final ButtonStyle botaoAdicionar = ElevatedButton.styleFrom(
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
                // color: Colors.blue,
                height: screenHeight * .15,
                //margin: EdgeInsets.only(bottom: screenHeight * .03),

                child: Text("CALCULE O ITU",
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w800)),
              ),
              Container(
                //color: Colors.green,
                height: screenHeight * .1,
                margin: EdgeInsets.only(bottom: screenHeight * .01),

                child: Text("Insira os dados abaixo:",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    Text("Máx Temperatura",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.1,
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
                        style: TextStyle(fontSize: 18),
                        controller: maxTempController,
                      ),
                    ),
                  ]),
                  SizedBox(width: 10),
                  Column(children: <Widget>[
                    Text("Min Temperatura",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.1,
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
                        style: TextStyle(fontSize: 18),
                        controller: minTempController,
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(children: <Widget>[
                    Text("Máx Umidade Relativa",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.1,
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
                        style: TextStyle(fontSize: 18),
                        controller: maxHumidityController,
                      ),
                    ),
                  ]),
                  SizedBox(width: 10),
                  Column(children: <Widget>[
                    Text("Min Umidade Relativa",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.height * 0.1,
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
                        style: TextStyle(fontSize: 18),
                        controller: minHumidityController,
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(height: size.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: size.width * .4,
                      height: screenHeight * .1,
                      //margin: EdgeInsets.only(bottom: screenHeight*.12),
                      child: ElevatedButton.icon(
                        style: botaoAdicionar,
                        onPressed: addValues,
                        icon: Icon(
                          Icons.plus_one,
                          size: 20,
                        ),
                        label: Text('Adicionar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w800,
                            )),
                      )),
                  SizedBox(width: size.width * .05),
                  Container(
                      width: size.width * .4,
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
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w800,
                            )),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: size.width * .02),
                child: Text(
                  'Você adicionou $valueCount valor(es)',
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.red[900],
                  ),
                ),
              ),
            ])));
  }
}
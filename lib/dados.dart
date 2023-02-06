import 'package:flutter/material.dart';
import 'package:appbovconfort/browse.dart';
import 'package:sizer/sizer.dart';

class Dados extends StatefulWidget {
  const Dados({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Dados> {
  @override
  Widget build(BuildContext context) {
    var appBar =
        AppBar(backgroundColor: Color.fromRGBO(57, 130, 111, 1), centerTitle: true, title: Image.asset("assets/appbar_logo.png"),
        leading: BackButton(
          color: Colors.teal[50],
        ),);
    var size = MediaQuery.of(context).size;
    var screenHeight = (size.height - kToolbarHeight - kBottomNavigationBarHeight) - MediaQuery.of(context).padding.top;
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
                    
                    height: screenHeight*.2,
                    margin: EdgeInsets.only(bottom: screenHeight*.03),
                    child:Center(
                    child: Text("Acesse o conteúdo desejado:", style: TextStyle(fontSize: 20.sp)),
                  )),
                  
                  Container(
                    
                      width: size.width *.7,
                      height: screenHeight * .15,
                      margin: EdgeInsets.only(bottom: screenHeight*.12),
                      child: ElevatedButton.icon(
                        style: raisedButtonStyle,
                        onPressed: () => {const Dados()},
                        icon: Icon(Icons.table_chart, size: 50,),
                        label: Text('Tabela de\n Valores e Faixas', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w800, )),
                      )
                    
                  ),
                  Container(
                    
                      width: size.width *.7,
                      height: screenHeight * .15,
                      margin: EdgeInsets.only(bottom: screenHeight*.12),
                      child: ElevatedButton.icon(
                        style: raisedButtonStyle,
                        onPressed: () {},
                        icon: Icon(Icons.device_thermostat, size: 50.0),
                        label: Text('Efeitos do \nEstresse Térmico', textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w800, )),
                      )
                    
                  ),
                  Container(
                    
                      width: size.width *.7,
                      height: screenHeight * .15,
                      margin: EdgeInsets.only(bottom: screenHeight*.12),
                      child: ElevatedButton.icon(
                        style: raisedButtonStyle,
                        onPressed: () {},
                        icon: Icon(Icons.my_library_books, size: 50,),
                        label: Text('Leituras Complementares',textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                      ))
                    
                  ),
                 
                 
                ])));
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Efeito_Stress extends StatefulWidget {
  const Efeito_Stress({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Efeito_Stress> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Color.fromRGBO(57, 130, 111, 1),
      centerTitle: true,
      title: Image.asset("assets/novologo.png", height: 30.sp),
      leading: BackButton(
        color: Colors.teal[50],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: appBar,
      body: Column(
        children: <Widget>[
          // Title with icon at the top
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.screen_rotation, // Round arrow icon
                  size: 24.0,
                  color: Colors.black, // Adjust color if necessary
                ),
                SizedBox(width: 8.0),
                Text(
                  'Vire o celular',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Adjust color if necessary
                  ),
                ),
              ],
            ),
          ),
          // Expanded image with InteractiveViewer
          Expanded(
            child: InteractiveViewer(
              clipBehavior: Clip.none,
              minScale: 1.0, // Start with the normal scale
              maxScale: 4.0, // Maximum zoom level
              constrained: true,
              child: Image.asset(
                'assets/Estresse_Térmico.png', // Your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

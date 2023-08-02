import 'package:appbovconfort/informa%C3%A7oes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Sobre_nos extends StatefulWidget {
  const Sobre_nos({super.key});

  @override
  State<Sobre_nos> createState() => _Sobre_nosState();
}

void _sendEmail() async {
  String email = 'tecbovapp@gmail.com';
  String subject = 'BovConfort';
  String body = '';

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
    query: encodeQueryParameters(
        <String, String>{'subject': subject, 'body': body}),
  );

  if (await canLaunchUrl(emailUri)) {
    launchUrl(emailUri);
  } else {
    print("Não foi possível enviar e-mail.");
  }
}

class _Sobre_nosState extends State<Sobre_nos> {
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
    final screenSize = MediaQuery.of(context).size;
    final buttonWidth = screenSize.width * 0.69;
    final buttonHeight = screenSize.height * 0.09;
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: appBar,
      body: Column(
        children: [
          SizedBox(
            height: 15.0,
          ),
          const Text(
            "Informações",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              fontFamily: "OpenSans-Regular",
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.resolveWith<Size?>(
                        (states) => Size(buttonWidth, buttonHeight)),
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                        (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Color(0xff88ddc6)),
                    foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Colors.white),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) => TextStyle(
                              fontSize: 20.sp,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w700,
                            ))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => informacoes(
                                index: 1,
                              )));
                },
                icon: Icon(
                  Icons.people,
                  size: 40,
                  color: Colors.black,
                ),
                label: const Text(
                  "Equipe",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.resolveWith<Size?>(
                        (states) => Size(buttonWidth, buttonHeight)),
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                        (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Color(0xff88ddc6)),
                    foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Colors.white),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) => TextStyle(
                              fontSize: 20.sp,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w700,
                            ))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => informacoes(
                                index: 2,
                              )));
                },
                icon: Icon(
                  Icons.notes,
                  size: 40,
                  color: Colors.black,
                ),
                label: const Text(
                  "Bibliografia",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.resolveWith<Size?>(
                        (states) => Size(buttonWidth, buttonHeight)),
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                        (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Color(0xff88ddc6)),
                    foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Colors.white),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) => TextStyle(
                              fontSize: 20.sp,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w700,
                            ))),
                onPressed: () {
                  _sendEmail();
                },
                icon: Icon(
                  Icons.mail_outline,
                  size: 40,
                  color: Colors.black,
                ),
                label: const Text(
                  "Fale Conosco",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.resolveWith<Size?>(
                        (states) => Size(buttonWidth, buttonHeight)),
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                        (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Color(0xff88ddc6)),
                    foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Colors.white),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) => TextStyle(
                              fontSize: 18.sp,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w700,
                            ))),
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  size: 25,
                  color: Colors.black,
                ),
                label: const Text(
                  "Compartilhar App",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            alignment: Alignment.center,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.resolveWith<Size?>(
                        (states) => Size(buttonWidth, buttonHeight)),
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
                        (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Color(0xff88ddc6)),
                    foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => Colors.white),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) => TextStyle(
                              fontSize: 20.sp,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w700,
                            ))),
                onPressed: () {
                  launchUrl(Uri.parse(
                      'https://docs.google.com/forms/d/e/1FAIpQLSeldnhyKP30LPIjmQgHd5U_rBhaCmev9JR_QV6ZeeeiEgF6vA/viewform?usp=sf_link'));
                },
                icon: Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.black,
                ),
                label: const Text(
                  "Avalie-nos",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          Container(
            height: 60.0,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Flexible(
                  child: Image.asset(
                    "assets/GovernoRS_logo-removebg-preview.png",
                    height: 89.5,
                    width: 89.5,
                  ),
                ),
                SizedBox(width: 4.0),
                Flexible(
                  child: Image.asset(
                    "assets/DDPA_logo-removebg-preview.png",
                    height: 89.5,
                    width: 89.5,
                  ),
                ),
                SizedBox(width: 4.0),
                Flexible(
                  child: Image.asset(
                    "assets/Fapergs_logo.png",
                    height: 89.5,
                    width: 89.5,
                  ),
                ),
                SizedBox(width: 4.0),
                Flexible(
                  child: Image.asset(
                    "assets/Logo__Biometeoro.png",
                    height: 89.5,
                    width: 89.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:appbovconfort/informa%C3%A7oes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class SobreNos extends StatefulWidget {
  const SobreNos({Key? key}) : super(key: key);

  @override
  State<SobreNos> createState() => _SobreNosState();
}

class _SobreNosState extends State<SobreNos> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: const Color.fromRGBO(57, 130, 111, 1),
      title: Image.asset("assets/novologo.png", height: 30.sp),
      centerTitle: true,
    );

    var screenSize = MediaQuery.of(context).size;
    var buttonWidth = screenSize.width * 0.69;
    var buttonHeight = screenSize.height * 0.09;

    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: appBar,
      body: Column(
        children: [
          SizedBox(height: screenSize.height * 0.08),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(buttonWidth, buttonHeight),
                backgroundColor: const Color(0xff88ddc6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => informacoes(index: 1),
                  ),
                );
              },
              icon: const Icon(
                Icons.people,
                size: 35,
              ),
              label: const Text(
                "Equipe",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.03),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(buttonWidth, buttonHeight),
                backgroundColor: const Color(0xff88ddc6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => informacoes(index: 2),
                  ),
                );
              },
              icon: const Icon(
                Icons.notes,
                size: 35,
              ),
              label: const Text(
                "Bibliografia",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.03),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(buttonWidth, buttonHeight),
                backgroundColor: const Color(0xff88ddc6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
               onPressed: () async {
                String email = 'tecbovapp@gmail.com';
                String subject = 'Aplicativo Bovconfort';
                String body = 'Olá';

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
              },
              icon: const Icon(
                Icons.mail,
                size: 35,
              ),
              label: const Text(
                "Fale Conosco",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.03),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(buttonWidth, buttonHeight),
                backgroundColor: const Color(0xff88ddc6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () async {
                const urlApp =
                    'https://play.google.com/store/apps/details?id=ddpaseapi.gov.br.bovconfort&pli=1';
                await Share.share('Compartilhe o aplicativo Bovconfort!\n\n$urlApp');},
              icon: const Icon(
                Icons.share,
                size: 30,
              ),
              label: const Text(
                "Compartilhar App",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.03),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                minimumSize: Size(buttonWidth, buttonHeight),
                backgroundColor: const Color(0xff88ddc6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                launch(
                  Uri.parse(
                    'https://docs.google.com/forms/d/e/1FAIpQLSeldnhyKP30LPIjmQgHd5U_rBhaCmev9JR_QV6ZeeeiEgF6vA/viewform?usp=sf_link',
                  ).toString(),
                );
              },
              icon: const Icon(
                Icons.star,
                size: 35,
              ),
              label: const Text(
                "Avalie-nos",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.02),
          Container(
            height: 60.0,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Image.asset(
                    "assets/Logo__Biometeoro.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Image.asset(
                    "assets/Fapergs_logo.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Image.asset(
                    "assets/DDPA_logo-removebg-preview.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Image.asset(
                    "assets/brasao_colorido.png",
                    height: 80,
                    width: 80,
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

class Informacoes extends StatelessWidget {
  final int index;

  const Informacoes({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(index == 1 ? "Equipe" : "Bibliografia"),
      ),
      body: Center(
        child: Text(
          index == 1
              ? "Informações da Equipe aqui..."
              : "Bibliografia aqui...",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

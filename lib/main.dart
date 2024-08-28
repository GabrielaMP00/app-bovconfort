import 'package:appbovconfort/Sobre_Nos.dart';
import 'package:appbovconfort/Tabela.dart';
import 'package:appbovconfort/efeito_stress.dart';
import 'package:appbovconfort/localizacao.dart';
import 'package:appbovconfort/perda_de_leite.dart';
import 'package:appbovconfort/perda_rebanho.dart';
import 'package:appbovconfort/perda_vaca.dart';
import 'package:flutter/material.dart';
import 'package:appbovconfort/home.dart';
import 'package:appbovconfort/browse.dart';
import 'package:appbovconfort/sobre.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'BovConfort',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: "OpenSans",
        ),
        home: const MyHomePage(title: 'BovConfort'),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _telas = [Home(), const Browse(), const SobreNos()];

  int _paginaAtual = 0;
  void _aoMudardeAba(int indice) {
    setState(() {
      _paginaAtual = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_paginaAtual],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _paginaAtual,
          onTap: _aoMudardeAba,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_outlined), label: "Conteúdo"),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
          ]),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

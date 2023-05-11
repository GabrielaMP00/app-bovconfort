import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class informacoes extends StatelessWidget {
  informacoes({this.index});

  final index;

  Column info(indice, BuildContext context) {
    if (indice == 1) {
      var dev = [
        "Bolsista IT/FAPERGS - Gabriela de Meneses Pinto (Informática Biomédica/UFCSPA)",
        "Estagiário CIEE/SEAPI - Yuri da Silva (Informática Biomédica/UFCSPA)"
      ];
      var equipe = [
        "Dra. M.V Adriana Kroef Tarouco (DDPA/SEAPI)",
        "Bolsista IT/FAPERGS - Gabriela de Meneses Pinto (Informática Biomédica/UFCSPA)",
        "Estagiário CIEE/SEAPI - Yuri da Silva (Informática Biomédica/UFCSPA)",
        "Dra. Eng. Agr. Ivonete Fátima Tazzo (DDPA/SEAPI)",
        "Dra. Eng. Agr. Loana Silveira Cardoso ",
        "Dra. Eng. Agr. Amanda Heemann Junges ",
        "Bolsista IC/FAPERGS Paulo Henrique Correia Allem Junior "
      ];
      var coordenadora = ["Dra. M.V Adriana Kroef Tarouco (DDPA/SEAPI)"];
      var apoio = [
        "Fundação de Amparo à Pesquisa do Estado do Rio Grande do Sul (FAPERGS)",
        "Departamento de Diagnóstico e Pesquisa Agropecuária (DDPA)/Secretaria Estadual da Agricultura, Pecuária, Produção Sustentável e Irrigação/RS (SEAPI)"
      ];

      List<Row> ListaCordenadora = [];
      for (var i = 0; i < coordenadora.length; i++) {
        ListaCordenadora.add(Row(
          children: <Widget>[
            Icon(Icons.person),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(coordenadora[i]),
              ),
            )
          ],
        ));
      }

      List<Row> ListaDev = [];
      for (var i = 0; i < dev.length; i++) {
        ListaDev.add(Row(
          children: <Widget>[
            Icon(Icons.person),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(dev[i]),
              ),
            )
          ],
        ));
      }
      List<Row> Listaapoiadores = [];
      for (var i = 0; i < apoio.length; i++) {
        Listaapoiadores.add(Row(
          children: <Widget>[
            Icon(Icons.person),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(apoio[i]),
              ),
            )
          ],
        ));
      }
      List<Row> Listaequipe = [];
      for (var i = 0; i < equipe.length; i++) {
        Listaequipe.add(Row(
          children: <Widget>[
            Icon(Icons.person),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Text(equipe[i]),
              ),
            )
          ],
        ));
      }

      return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(1),
            child: Column(
              children: <Widget>[
                //Coordenação
                Container(
                  child: Column(
                    children: <Widget>[
                      //Coordenadora
                      Container(
                        color: Color(0xff88ddc6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text("Coordenação",
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: ListaCordenadora,
                        ),
                      ),

                      //Dev
                      Container(
                        color: Color(0xff88ddc6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text("Desenvolvimento",
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: ListaDev,
                        ),
                      ),
                      //Apoiadores
                      Container(
                        color: Color(0xff88ddc6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text("Apoiadores",
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: Listaapoiadores,
                        ),
                      ),

                      //Equipe
                      Container(
                        color: Color(0xff88ddc6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text("Equipe",
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                            )
                          ],
                        ),
                      ),

                      Column(
                        children: Listaequipe,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );
    } else if (indice == 2) {
      var Bibliografia = [
        "AZEVÊDO, D. M. M. R.; ALVES, A. A. Bioclimatologia aplicada à produção de bovinos leiteiros nos trópicos. Teresina: Embrapa Meio-Norte, 2009. Disponível em: https://ainfo.cnptia.embrapa.br/digital/bitstream/item/78361/1/documento-188.pdf.",
        "HAHN, G. L. Bioclimatologia e instalações zootécnicas: aspectos teóricos e aplicados. Jaboticabal: FUNEP, 1993. 28 p.",
        "PIRES, M. de F. A.; CAMPOS, A. T. Conforto Animal para maior produção de leite. Viçosa: CPT – Centro de Produções Técnicas, 2008. ",
        "PIRES, M. de F. A.; CAMPOS, A. T. Modificações ambientais para reduzir o estresse calórico em gado de leite. 1. ed. Juiz de Fora: Embrapa Gado de Leite, dez. 2004. 6 p. (Comunicado Técnico, 42).  Disponível em: https://www.infoteca.cnptia.embrapa.br/infoteca/bitstream/doc/594946/1/COT42Modificacoesambientais.pdf.  ",
        "RENAUDEAU, D. et al. Adaptation to hot climate and strategies to alleviate heat stress in livestock production. Animal, Cambridge, v. 6, n. 5, p. 707–728, 2012.",
        "SILVA, I. J. O. et al. Efeitos da climatização do curral de espera na produção de leite de vacas holandesas. Revista Brasileira de Zootecnia, Viçosa, v. 31, n. 5, p. 2036-2042, 2002. DOI: https://doi.org/10.1590/S1516-35982002000800019. Disponível em: https://www.scielo.br/j/rbz/a/qdrFNTt757szgFm8D8Gm5SK/?lang=pt#:~:text=De%20acordo%20com%20as%20condi%C3%A7%C3%B5es,de%20vacas%20da%20ra%C3%A7a%20holandesa.",
        "SOUZA, B. B. et al. Avaliação do ambiente físico promovido pelo sombreamento sobre o processo termorregulatório em novilhas leiteiras. Agropecuária Científica no Semi-Árido, Campina Grande, v. 6, n. 2, p. 59-65, 2010.",
        "THOM, E. C. The discomfort index. Weatherwise, Boston, v. 12, n. 2, p. 57- 60, 1959.",
      ];
      List<Row> ListaBibliografia = [];

      for (int i = 0; i < Bibliografia.length; i++) {
        ListaBibliografia.add(Row(
          children: <Widget>[
            Icon(Icons.book),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(6),
              child: Text(Bibliografia[i]),
            ))
          ],
        ));
      }
      return Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Container(
                  color: Color(0xff88ddc6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("Bibliografia",
                            style: Theme.of(context).textTheme.titleLarge),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: ListaBibliografia,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return Column();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(32.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          info(index, context),
                          //Back Button
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                        (states) => Color(0xff88ddc6)),
                              ),
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.arrow_back),
                                      Text("Voltar"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

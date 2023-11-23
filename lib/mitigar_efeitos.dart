import 'package:flutter/material.dart';
import 'package:appbovconfort/dados.dart';
import 'package:sizer/sizer.dart';

class Mitigar_Efeitos extends StatefulWidget {
  const Mitigar_Efeitos({Key? key}) : super(key: key);

  @override
  State<Mitigar_Efeitos> createState() => _Mitigar_EfeitosState();
}

class _Mitigar_EfeitosState extends State<Mitigar_Efeitos> {
  bool isVisible = false;

int _openCardIndex = -1;

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
        backgroundColor: Colors.grey,
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ));
    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.teal[50],
      body: Center(
          child: ListView(children: [
        SizedBox(height: size.height * .1),
        Container(
          //color: Colors.blue,
          height: screenHeight * .1,
          //margin: EdgeInsets.only(bottom: screenHeight * .03),
          child: Text("DICAS DE MANEJO",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w800)),
        ),
        SizedBox(height: size.height * .02),
        Card(
          color: Color.fromRGBO(136, 221, 198, 1),
          margin: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
          shadowColor: Colors.black,
          
          elevation: 8,
          child: ExpansionTile(
            onExpansionChanged: (isOpen) {
                setState(() {
                  if (isOpen) {
                    _openCardIndex = 0;
                  } else {
                    _openCardIndex = -1;
                  }
                });
              },
              initiallyExpanded: _openCardIndex == 0,
            title: Stack(
              
              children: <Widget>[
                Text(
                  "Medidas para mitigar os\nefeitos do estresse térmico",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            backgroundColor: Color.fromRGBO(136, 221, 198, 1),
            children: [
              Padding(
                padding:
                    const EdgeInsets.all(16.0), // Adjust the padding as needed
                child: ListTile(
                  title: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          "Na escolha da prática a ser adotada na propriedade, devem-se considerar as necessidades dos animais, o impacto das tecnologias escolhidas sobre as condições ambientais, o nível de gerenciamento da propriedade, o capital disponível e a relação custo-benefício da tecnologia adotada.\n\nUma forma mais eficiente de se combater o estresse térmico é estabelecer um sistema de manejo e de ambiente integrados, com o objetivo de manter a temperatura corporal do animal, próxima do normal (38°C a 39°C), a maior parte do dia.\n\nO controle eficiente do ambiente através de mecanismos naturais ou artificiais visam contribuir na dissipação de calor, quando o animal produz mais calor corporal do que pode dissipar em condições ambientais adversas.\n\nDestacando-se o incremento da movimentação do ar, o umedecimento da superfície do animal, o resfriamento evaporativo do ar (sistemas como ventilador, aspersor e painel evaporativo) e o uso de sombras para minimizar os efeitos da radiação solar direta, além da introdução de dietas com menor incremento calórico. ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Color.fromRGBO(136, 221, 198, 1),
          margin: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
          shadowColor: Colors.black,
          elevation: 8,
          child: ExpansionTile(
            onExpansionChanged: (isOpen) {
                  setState(() {
                    if (isOpen) {
                      _openCardIndex = 1; // Set the index of the currently open card
                    } else {
                      _openCardIndex = -1; // Reset if no card is open
                    }
                  });
                },
                initiallyExpanded: _openCardIndex == 1,
            title: Stack(
              children: <Widget>[
                Text(
                  "Sistemas de sombreamento e refrigeração",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            backgroundColor: Color.fromRGBO(136, 221, 198, 1),
            children: [
              Padding(
                padding:
                    const EdgeInsets.all(16.0), // Adjust the padding as needed
                child: ListTile(
                  title: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          "O primeiro passo para mitigar os efeitos estressantes de um ambiente desfavorável é proteger as vacas da radiação solar direta. O sombreamento, natural ou artificial, é um dos métodos mais facilmente implementados e econômicos de minimizar o calor da radiação solar.\n\nVacas com acesso à sombra geralmente:\n\n• Produzem 0,7 kg dia-1 mais leite do que vacas sem sombreamento;\n\n• Taxa de concepção pode ser aumentada passando de 25,3% para 44,4%.\n\nRecomenda-se:\n\n• Oferta de sombra natural ou artificial para todos os animais ao longo do dia, evitando disputas hierárquicas;\n\n• Adoção de sistemas de Integração Lavoura - Pecuária - Floresta (ILPF);\n\n• Sombreamento artificial: altura mínima de 3,5 m; espaçamento de 2,3 m2 a 4,5 m2 / animal adulto; orientação sentido leste-oeste;\n\n• Isolamento térmico do telhado do galpão: redução do impacto da radiação solar direta no verão e fluxo de ar frio no inverno\n\n• Utilização de ar condicionado pode ser uma opção e, provavelmente, a maneira mais eficaz de reduzir e manter a temperatura do ar e a umidade relativa abaixo de um nível aceitável, onde ITU < 72;\n\n• Porém de alto custo energético e com problemas de manutenção do sistema (filtragem de poeira, problemas de recirculação de ar, acúmulo de odor-amônia);\n\n• Combinação de ventiladores para aumentar a perda de calor por convecção) and sprinklers or nebulizadores/misturadores (para promover o resfriamento evaporativo), acionados nos horários mais quentes do dia.\n\n• Adição de ventiladores dentro de construções existentes para recircular o ar reduz com sucesso o estresse térmico. Devido à simplicidade, praticidade e relação custo/benefício favorável é uma alternativa em regiões de clima quente;\n\n• Resfriamento evaporativo para regiões de clima quente e seco;\n\n• Práticas adicionais, tais como: pintar de branco a superfície superior da cobertura, aspergir água na cobertura, adicionar isolamento térmico, utilizados de forma associada a outras medidas de manejo.",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Color.fromRGBO(136, 221, 198, 1),
          margin: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
          shadowColor: Colors.black,
          elevation: 8,
          child: ExpansionTile(
            onExpansionChanged: (isOpen) {
                  setState(() {
                    if (isOpen) {
                      _openCardIndex = 2; // Set the index of the currently open card
                    } else {
                      _openCardIndex = -1; // Reset if no card is open
                    }
                  });
                },
                initiallyExpanded: _openCardIndex == 2,
            title: Stack(
              children: <Widget>[
                Text(
                  "Disponibilização de \nágua de qualidade",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            backgroundColor: Color.fromRGBO(136, 221, 198, 1),
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(
                      16.0), // Adjust the padding as needed
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          " Animais em situação de estresse térmico, o consumo de água pode até dobrar quando a temperatura é excessiva.\n\n•	O aumento da temperatura ambiente de 30,5ºC para 34,3ºC e o ITU de 77 para 82 há incremento de 43% no consumo de água por novilhas holandesas;\n\n•	Em condições termoneutras, as vacas necessitam de cerca de 3 litros de água bebida para produzir 1 kg de leite;\n\n•	Uma vaca de 500 kg, em lactação, mantida a uma temperatura de 21ºC, beberá em torno de 50 litros de água/dia, mas a 32ºC aumentará o consumo em 25% a 100%;\n\nRecomenda-se:\n\n•	Disponibilização de bebedouros, que devem ser instalados nas pastagens, preferencialmente nos cruzamentos de cercas, servindo a duas ou mais subdivisões;\n\n• Podem ser construídos de materiais como: alvenaria, chapas galvanizadas, concreto pré-moldado, entre outros. Devem ter, ao redor, uma camada de cascalho, ou similar, compactada, para evitar a formação de lama e atoleiros;\n\n•	Número e a distribuição dos bebedouros variam em função da área das pastagens e a sua capacidade deverá ser calculada em função do número de animais a serem atendidos, considerando o consumo de 50 a 60 litros de água/UA/dia.\n\n•	Evita-se o uso de aguadas naturais, com o objetivo de melhor conservação ambiental.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Color.fromRGBO(136, 221, 198, 1),
          margin: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
          shadowColor: Colors.black,
          elevation: 8,
          child: ExpansionTile(
            onExpansionChanged: (isOpen) {
                  setState(() {
                    if (isOpen) {
                      _openCardIndex = 3; // Set the index of the currently open card
                    } else {
                      _openCardIndex = -1; // Reset if no card is open
                    }
                  });
                },
                initiallyExpanded: _openCardIndex == 3,
            title: Stack(
              children: <Widget>[
                Text(
                  "Nutrição Adequeda",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            backgroundColor: Color.fromRGBO(136, 221, 198, 1),
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(
                      16.0), // Adjust the padding as needed
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text:
                          "O primeiro sinal de estresse térmico é a queda na alimentação, para reduzir a produção de calor metabólico, assim, práticas nutricionais podem ser eficientes para controlar seus efeitos. \n\nTemperaturas diárias médias e máximas têm efeitos variáveis sobre a ingestão de alimentos e, subsequentemente, sobre a produção de leite, dependendo da umidade relativa do ar e do tempo em que as vacas ficam em temperaturas capazes de provocar estresse.\n\nConsequências:\n\n•	Ao atingir 25,5°C, uma vaca passa a ter dificuldades para eliminar o excesso de calor e o consumo de ração começa a diminuir, como consequência, o teor de gordura do leite diminui e distúrbios digestivos aumentam;\n\n•	 A redução de consumo de matéria seca para vacas estressadas pelo calor é de cerca de 10 a 15% em relação às vacas resfriadas e depende da sua produção de leite;\n\n•	Padrão alimentar alterado (o animal ingere mais frequentemente pequenas porções de alimento), aumenta a escolha por alimentos concentrados durante o dia, e deixa para pastejar durante a noite, onde a temperatura ambiente é mais amena.\n\n•  Redução da produção de leite ocorrendo poucos dias depois.\n\nMedidas a serem adotadas:\n\n• Oferecer dieta com maior densidade de nutrientes para evitar a queda na produção de leite; \n\n•	Reduzir o calor gerado no trato digestivo formulando dietas frias com baixo incremento calórico, ou seja, disponibilizar menor quantidade de forragem e utilizar gordura, não ultrapassando 7% da matéria seca, podendo-se incluir como alternativas: pastagens tenras, silagens de grãos e concentrados ricos em gordura;\n\n•	 Aumentar a frequência de tratos ao longo do dia, com redução da quantidade/trato e estimular consumo em dias mais quentes;\n\nResumidamente, algumas estratégias nutricionais para minimizar o desconforto térmico são (AZEVÊDO; ALVES, 2009):\n\n•	Aumentar a densidade energética da dieta (fornecer forragem de alta qualidade, aumentar a proporção de concentrado, adicionar à dieta ingredientes com alto teor de óleo ou gordura - não ultrapassar 7% da dieta total); \n\n•	 Aumentar a porcentagem de minerais na ingestão de matéria seca total (atentar para potássio, cloreto de sódio e magnésio);\n\n•	Não fornecer dieta com mais de 65% de proteína degradável no rúmen (a excreção de N gera calor metabólico);\n\n•	Adicionar tamponantes à dieta (incluir 1% de bicarbonato); \n\n•	Aumentar a frequência das refeições (mínimo de três vezes) e evitar cochos vazios;\n\n•	Fornecer alimentos nas horas mais frescas do dia (entre 18h e 6h);\n\n•	Fornecer alimentos fermentados (silagens) logo após a retirada do silo, evitando aquecimentos;\n\n•	Utilizar ração total logo após a ordenha;\n\n•	Dispor de espaço no cocho de no mínimo 0,7 m vaca-1;\n\n•	Colocar cochos e bebedouros na sombra.",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * .05),
        Container(
                width: size.width * .5,
                height: screenHeight * .1,
                margin: const EdgeInsets.only(left: 70, right: 70, top: 5, bottom: 5),
                child: ElevatedButton(
                  style: botaoCalcular,
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        // <-- Icon
                        Icons.arrow_back,
                        size: 24.0,
                      ),
                      Text('Voltar ao início',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          )), // <-- Text
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * .05),
      ])),
    );
  }
}

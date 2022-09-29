import 'package:climatlas19/view/sobre_page/contain_concepts.dart';
import 'package:climatlas19/view/sobre_page/contain_introduction.dart';
import 'package:climatlas19/view/sobre_page/contain_methodology_page.dart';
import 'package:climatlas19/view/sobre_page/estacoes_iapar_view.dart';
import 'package:climatlas19/view/sobre_page/estacoes_pluviometricas_view.dart';
import 'package:flutter/material.dart';

class SobrePage extends StatefulWidget {
  const SobrePage({Key? key}) : super(key: key);

  @override
  State<SobrePage> createState() => _SobrePageState();
}

String estacoesIapar = "images/mapas/estacoes_iapar/fig_01.jpg";

String estacoesPluv = "images/mapas/estacoes_aguas/fig_02.jpg";

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_outlined)),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                  semanticLabel: "Home",
                ),
                tooltip: 'Voltar para Home',
                onPressed: () {
                  Navigator.of(context).popUntil(ModalRoute.withName('/'));
                },
              ),
            ],
            title: const Text('Sobre o Atlas Climático'),
            centerTitle: true,
            backgroundColor: Colors.green,
            bottom: const TabBar(
              indicatorColor: Colors.white70,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicatorWeight: 5,
              isScrollable: true,
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(
                  text: "Introdução",
                ),
                Tab(
                  text: "Conceitos",
                ),
                Tab(
                  text: "Metodologia",
                ),
                Tab(
                  text: "Autores",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Text(
                    ContainIntroduction().contain,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    style: const TextStyle(fontSize: 24, letterSpacing: 0.8),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Text(
                    ContainConcepts().concepts,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    style: const TextStyle(fontSize: 24, letterSpacing: 0.8),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        ContainMethodology().methodology,
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style:
                            const TextStyle(fontSize: 24, letterSpacing: 0.8),
                      ),
                      Card(
                        child: GestureDetector(
                          onTap: () {
                            estacoesMeteorologicas(estacoesIapar);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                settings: const RouteSettings(
                                    name: "/estacoes_iapar"),
                                builder: (context) =>
                                    const EstacoesMeteorologicas(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/mapas/estacoes_iapar/fig_01.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Text(
                        "Figura 01-Distribuição espacial da rede de estações meteorológicas MI.",
                        style: TextStyle(),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Card(
                        child: GestureDetector(
                          onTap: () {
                            estacoesPluviometricas(estacoesPluv);
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                settings: const RouteSettings(
                                    name: "/estacoes_pluviometricas"),
                                builder: (context) =>
                                    const EstacoesPluviometricas(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'images/mapas/estacoes_aguas/fig_02.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Text(
                        "Figura 02-Distribuição espacial da rede de estações pluviométricas.",
                        style: TextStyle(),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          '\nAutores\n'),
                      Text(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          'Pablo Ricardo Nitsche'),
                      Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                        'Engenheiro Agrícola\n'
                        'M.Sc. em Engenharia Agrícola\n'
                        'Pesquisador da Área Técnica de Agrometeorologia e Fisiologia Vegetal do IAPAR\n\n',
                      ),
                      Text(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          'Paulo Henrique Caramori'),
                      Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                        'Engenheiro Agrônomo\n'
                        'Ph.D em Agrometeorologia\n'
                        'Pesquisador-Colaborador da Área Técnica de Agrometeorologia e Fisiologia Vegetal do IAPAR\n\n',
                      ),
                      Text(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          'Wilian da Silva Ricce'),
                      Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                        'Engenheiro Agrônomo\n'
                        'Dr. em Agronomia\n'
                        'Pesquisador da EPAGRI/CIRAM-SC\n\n',
                      ),
                      Text(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          'Larissa Fernandes Dias Pinto'),
                      Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                        'Graduando em Agronomia\n'
                        'Bolsista de Iniciação Científica PIBITI/CNPq\n\n',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

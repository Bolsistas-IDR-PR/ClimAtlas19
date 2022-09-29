import 'package:climatlas19/ferramentas.dart';
import 'package:climatlas19/view/evapotranspiracao_mapas/por_estacao/evapotranspiracao_por_estacao.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'anual/evapotranspiracao_anual.dart';
import 'mensal/evapotranspiracao_mensal.dart';

final List<String> imgEvapotranspiracaoPotencialAnual = [
  "images/mapas/Figura120/Figura120_page-0001.jpg"
];

final List<String> imgListEstacao = [
  'images/mapas/Figura121/Figura121_page-0001.jpg',
  'images/mapas/Figura122/Figura122_page-0001.jpg',
  'images/mapas/Figura123/Figura123_page-0001.jpg',
  'images/mapas/Figura124/Figura124_page-0001.jpg',
];

final List<String> imgListEvapotranspiracaoPotencialMensal = [
  'images/mapas/Figura125/Figura125_page-0001.jpg',
  'images/mapas/Figura126/Figura126_page-0001.jpg',
  'images/mapas/Figura127/Figura127_page-0001.jpg',
  'images/mapas/Figura128/Figura128_page-0001.jpg',
  'images/mapas/Figura129/Figura129_page-0001.jpg',
  'images/mapas/Figura130/Figura130_page-0001.jpg',
  'images/mapas/Figura131/Figura131_page-0001.jpg',
  'images/mapas/Figura132/Figura132_page-0001.jpg',
  'images/mapas/Figura133/Figura133_page-0001.jpg',
  'images/mapas/Figura134/Figura134_page-0001.jpg',
  'images/mapas/Figura135/Figura135_page-0001.jpg',
  'images/mapas/Figura136/Figura136_page-0001.jpg',
];

final themeMode = ValueNotifier(2);

List<Widget> imagensEvapotranspiracaoPotencialPorEstacao(
        BuildContext context) =>
    imgListEstacao
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          evapotranspiracaoPotencialEstacao(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const EvapotranspiracaoPotencialPorEstacao(),
                            ),
                          );
                        },
                        child:
                            Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 100, 150, 100),
                                Color.fromARGB(200, 123, 196, 100)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            ' ${Descricoes.tituloEstacao[imgListEstacao.indexOf(item)]}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();

List<Widget> imagensEvapotranspiracaoPotencialMensal(BuildContext context) =>
    imgListEvapotranspiracaoPotencialMensal
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          evapotranspiracaoPotencialMes(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const EvapotranspiracaoPotencialMensal(),
                            ),
                          );
                        },
                        child:
                            Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 100, 150, 100),
                                Color.fromARGB(200, 123, 196, 100)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            ' ${Descricoes.tituloMes[imgListEvapotranspiracaoPotencialMensal.indexOf(item)]}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();

List<Widget> imagensEvapotranspiracaoPotencialAnual(BuildContext context) =>
    imgEvapotranspiracaoPotencialAnual
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      evapotranspiracaoPotencialAnual(item);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const EvapotranspiracaoPotencialAnual(),
                        ),
                      );
                    },
                    child: Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,

                    ///TITULO DA IMAGEM
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 100, 150, 100),
                            Color.fromARGB(200, 123, 196, 100)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        ' ${Descricoes.tituloAnual[imgEvapotranspiracaoPotencialAnual.indexOf(item)]}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        .toList();

class EvapotranspiracaoPotencial extends StatelessWidget {
  const EvapotranspiracaoPotencial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home_outlined),
            tooltip: 'Voltar para Home',
            onPressed: () {
              Navigator.of(context).popUntil(ModalRoute.withName('/'));
            },
          ),
        ],
        titleTextStyle: const TextStyle(
            leadingDistribution: TextLeadingDistribution.proportional),
        title: const Text('Evapotranspiração Potencial (ETP)'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 24),
        itemCount: 3,
        itemBuilder: (ctx, index) {
          if (index == 0) {
            return Column(
              children: [
                const Text("Por Estação"),
                CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    pageViewKey:
                        const PageStorageKey<String>('carousel_slider'),
                  ),
                  items: imagensEvapotranspiracaoPotencialPorEstacao(context),
                ),
              ],
            );
          }

          if (index == 1) {
            return Column(
              children: [
                const Text("Por Mês"),
                CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    pageViewKey:
                        const PageStorageKey<String>('carousel_slider'),
                  ),
                  items: imagensEvapotranspiracaoPotencialMensal(context),
                ),
              ],
            );
          }
          if (index == 2) {
            return Column(
              children: [
                const Text("Anual"),
                CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    pageViewKey:
                        const PageStorageKey<String>('carousel_slider'),
                  ),
                  items: imagensEvapotranspiracaoPotencialAnual(context),
                ),
              ],
            );
          } else {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              color: Colors.blue,
              height: 200,
              child: const Center(
                child: Text('other content'),
              ),
            );
          }
        },
      ),
    );
  }
}

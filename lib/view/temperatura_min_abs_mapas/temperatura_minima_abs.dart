import 'package:climatlas19/ferramentas.dart';
import 'package:climatlas19/view/temperatura_min_abs_mapas/por_estacao/temperatura_minima_absoluta_por_estacao.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'anual/temperatura_minima_absoluta_anual.dart';
import 'mensal/temperatura_minima_absoluta_mensal.dart';

final List<String> imgTemperaturaMinimaAbsolutaAnual = [
  "images/mapas/Figura52/Figura52_page-0001.jpg"
];

final List<String> imgListEstacao = [
  'images/mapas/Figura53/Figura53_page-0001.jpg',
  'images/mapas/Figura54/Figura54_page-0001.jpg',
  'images/mapas/Figura55/Figura55_page-0001.jpg',
  'images/mapas/Figura56/Figura56_page-0001.jpg',
];

final List<String> imgListTemperaturaMinimaAbsolutaMensal = [
  'images/mapas/Figura57/Figura57_page-0001.jpg',
  'images/mapas/Figura58/Figura58_page-0001.jpg',
  'images/mapas/Figura59/Figura59_page-0001.jpg',
  'images/mapas/Figura60/Figura60_page-0001.jpg',
  'images/mapas/Figura61/Figura61_page-0001.jpg',
  'images/mapas/Figura62/Figura62_page-0001.jpg',
  'images/mapas/Figura63/Figura63_page-0001.jpg',
  'images/mapas/Figura64/Figura64_page-0001.jpg',
  'images/mapas/Figura65/Figura65_page-0001.jpg',
  'images/mapas/Figura66/Figura66_page-0001.jpg',
  'images/mapas/Figura67/Figura67_page-0001.jpg',
  'images/mapas/Figura68/Figura68_page-0001.jpg',
];

final themeMode = ValueNotifier(2);

List<Widget> imagensTemperaturaMinimaAbsolutaPorEstacao(BuildContext context) =>
    imgListEstacao
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          tempMinAbsEstacao(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TemperaturaMinimaAbsolutaPorEstacao(),
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

List<Widget> imagensTemperaturaMinimaAbsolutaMensal(BuildContext context) =>
    imgListTemperaturaMinimaAbsolutaMensal
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          tempMinAbsMes(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TemperaturaMinimaAbsolutaMensal(),
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
                            ' ${Descricoes.tituloMes[imgListTemperaturaMinimaAbsolutaMensal.indexOf(item)]}',
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

List<Widget> imagensTemperaturaMinimaAbsolutaAnual(BuildContext context) =>
    imgTemperaturaMinimaAbsolutaAnual
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      tempMinAbsAnual(item);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const TemperaturaMinimaAbsolutaAnual(),
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
                        ' ${Descricoes.tituloAnual[imgTemperaturaMinimaAbsolutaAnual.indexOf(item)]}',
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

class TemperaturaMinimaAbsoluta extends StatelessWidget {
  const TemperaturaMinimaAbsoluta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined)),
        titleTextStyle: const TextStyle(
            leadingDistribution: TextLeadingDistribution.proportional),
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
        title: const Text('Temperatura Mínima Absoluta'),
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
                  items: imagensTemperaturaMinimaAbsolutaPorEstacao(context),
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
                  items: imagensTemperaturaMinimaAbsolutaMensal(context),
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
                  items: imagensTemperaturaMinimaAbsolutaAnual(context),
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

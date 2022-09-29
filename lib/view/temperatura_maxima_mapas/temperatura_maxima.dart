import 'package:climatlas19/ferramentas.dart';
import 'package:climatlas19/view/temperatura_maxima_mapas/por_estacao/temperatura_maxima_por_estacao.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'anual/temperatura_maxima_anual.dart';
import 'mensal/temperatura_maxima_mensal.dart';

final List<String> imgTemperaturaMaximaAnual = [
  "images/mapas/Figura69/Figura69_page-0001.jpg"
];

final List<String> imgListEstacao = [
  'images/mapas/Figura70/Figura70_page-0001.jpg',
  'images/mapas/Figura71/Figura71_page-0001.jpg',
  'images/mapas/Figura72/Figura72_page-0001.jpg',
  'images/mapas/Figura73/Figura73_page-0001.jpg',
];

final List<String> imgListTemperaturaMaximaMensal = [
  'images/mapas/Figura74/Figura74_page-0001.jpg',
  'images/mapas/Figura75/Figura75_page-0001.jpg',
  'images/mapas/Figura76/Figura76_page-0001.jpg',
  'images/mapas/Figura77/Figura77_page-0001.jpg',
  'images/mapas/Figura78/Figura78_page-0001.jpg',
  'images/mapas/Figura79/Figura79_page-0001.jpg',
  'images/mapas/Figura80/Figura80_page-0001.jpg',
  'images/mapas/Figura81/Figura81_page-0001.jpg',
  'images/mapas/Figura82/Figura82_page-0001.jpg',
  'images/mapas/Figura83/Figura83_page-0001.jpg',
  'images/mapas/Figura84/Figura84_page-0001.jpg',
  'images/mapas/Figura85/Figura85_page-0001.jpg',
];

final themeMode = ValueNotifier(2);

List<Widget> imagensTemperaturaMaximaPorEstacao(BuildContext context) =>
    imgListEstacao
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          tempMaxEstacao(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TemperaturaMaximaPorEstacao(),
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

List<Widget> imagensTemperaturaMaximaMensal(BuildContext context) =>
    imgListTemperaturaMaximaMensal
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          tempMaxMes(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TemperaturaMaximaMensal(),
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
                            ' ${Descricoes.tituloMes[imgListTemperaturaMaximaMensal.indexOf(item)]}',
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

List<Widget> imagensTemperaturaMaximaAnual(BuildContext context) =>
    imgTemperaturaMaximaAnual
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      tempMaxAnual(item);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TemperaturaMaximaAnual(),
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
                        ' ${Descricoes.tituloAnual[imgTemperaturaMaximaAnual.indexOf(item)]}',
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

class TemperaturaMaxima extends StatelessWidget {
  const TemperaturaMaxima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined)),
        // titleTextStyle: const TextStyle(
        //     leadingDistribution: TextLeadingDistribution.proportional),
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
        title: const Text('Temperatura Máxima'),

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
                  items: imagensTemperaturaMaximaPorEstacao(context),
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
                  items: imagensTemperaturaMaximaMensal(context),
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
                  items: imagensTemperaturaMaximaAnual(context),
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

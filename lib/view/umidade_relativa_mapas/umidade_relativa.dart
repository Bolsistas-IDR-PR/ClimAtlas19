import 'package:climatlas19/ferramentas.dart';
import 'package:climatlas19/view/umidade_relativa_mapas/por_estacao/umidade_relativa_por_estacao.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'anual/umidade_relativa_anual.dart';
import 'mensal/umidade_relativa_mensal.dart';

final List<String> imgUmidadeRelativaAnual = [
  "images/mapas/Figura103/Figura103_page-0001.jpg"
];

final List<String> imgListEstacao = [
  'images/mapas/Figura104/Figura104_page-0001.jpg',
  'images/mapas/Figura105/Figura105_page-0001.jpg',
  'images/mapas/Figura106/Figura106_page-0001.jpg',
  'images/mapas/Figura107/Figura107_page-0001.jpg',
];

final List<String> imgListUmidadeRelativaMensal = [
  'images/mapas/Figura108/Figura108_page-0001.jpg',
  'images/mapas/Figura109/Figura109_page-0001.jpg',
  'images/mapas/Figura110/Figura110_page-0001.jpg',
  'images/mapas/Figura111/Figura111_page-0001.jpg',
  'images/mapas/Figura112/Figura112_page-0001.jpg',
  'images/mapas/Figura113/Figura113_page-0001.jpg',
  'images/mapas/Figura114/Figura114_page-0001.jpg',
  'images/mapas/Figura115/Figura115_page-0001.jpg',
  'images/mapas/Figura116/Figura116_page-0001.jpg',
  'images/mapas/Figura117/Figura117_page-0001.jpg',
  'images/mapas/Figura118/Figura118_page-0001.jpg',
  'images/mapas/Figura119/Figura119_page-0001.jpg',
];

final themeMode = ValueNotifier(2);

List<Widget> imagensUmidadeRelativaPorEstacao(BuildContext context) =>
    imgListEstacao
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          umidadeRelativaEstacao(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const UmidadeRelativaPorEstacao(),
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

List<Widget> imagensUmidadeRelativaMensal(BuildContext context) =>
    imgListUmidadeRelativaMensal
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          umidadeRelativaMes(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const UmidadeRelativaMensal(),
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
                            ' ${Descricoes.tituloMes[imgListUmidadeRelativaMensal.indexOf(item)]}',
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

List<Widget> imagensUmidadeRelativaAnual(BuildContext context) =>
    imgUmidadeRelativaAnual
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      umidadeRelativaAnual(item);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UmidadeRelativaAnual(),
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
                        ' ${Descricoes.tituloAnual[imgUmidadeRelativaAnual.indexOf(item)]}',
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

class UmidadeRelativa extends StatelessWidget {
  const UmidadeRelativa({Key? key}) : super(key: key);

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
        title: const Text('Umidade Relativa'),
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
                  items: imagensUmidadeRelativaPorEstacao(context),
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
                  items: imagensUmidadeRelativaMensal(context),
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
                  items: imagensUmidadeRelativaAnual(context),
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

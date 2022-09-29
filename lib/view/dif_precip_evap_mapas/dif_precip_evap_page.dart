import 'package:climatlas19/ferramentas.dart';
import 'package:climatlas19/view/dif_precip_evap_mapas/por_estacao/precipitacao_evapotranspiracao_por_estacao.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'anual/precipitacao_evapotranspiracao_anual.dart';
import 'mensal/precipitacao_evapotranspiracao_mensal.dart';

final List<String> imgPrecipitacaoEvapotranspiracaoAnual = [
  "images/mapas/Figura137/Figura137_page-0001.jpg"
];

final List<String> imgListEstacao = [
  'images/mapas/Figura138/Figura138_page-0001.jpg',
  'images/mapas/Figura139/Figura139_page-0001.jpg',
  'images/mapas/Figura140/Figura140_page-0001.jpg',
  'images/mapas/Figura141/Figura141_page-0001.jpg',
];

final List<String> imgListPrecipitacaoEvapotranspiracaoMensal = [
  'images/mapas/Figura142/Figura142_page-0001.jpg',
  'images/mapas/Figura143/Figura143_page-0001.jpg',
  'images/mapas/Figura144/Figura144_page-0001.jpg',
  'images/mapas/Figura145/Figura145_page-0001.jpg',
  'images/mapas/Figura146/Figura146_page-0001.jpg',
  'images/mapas/Figura147/Figura147_page-0001.jpg',
  'images/mapas/Figura148/Figura148_page-0001.jpg',
  'images/mapas/Figura149/Figura149_page-0001.jpg',
  'images/mapas/Figura150/Figura150_page-0001.jpg',
  'images/mapas/Figura151/Figura151_page-0001.jpg',
  'images/mapas/Figura152/Figura152_page-0001.jpg',
  'images/mapas/Figura153/Figura153_page-0001.jpg',
];

final themeMode = ValueNotifier(2);

List<Widget> imagensPrecipitacaoEvapotranspiracaoPorEstacao(
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
                          precipitacaoEvapotranspiracaoEstacao(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PrecipitacaoEvapotranspiracaoPorEstacao(),
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

List<Widget> imagensPrecipitacaoEvapotranspiracaoMensal(BuildContext context) =>
    imgListPrecipitacaoEvapotranspiracaoMensal
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          precipitacaoEvapotranspiracaoMes(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PrecipitacaoEvapotranspiracaoMensal(),
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
                            ' ${Descricoes.tituloMes[imgListPrecipitacaoEvapotranspiracaoMensal.indexOf(item)]}',
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

List<Widget> imagensPrecipitacaoEvapotranspiracaoAnual(BuildContext context) =>
    imgPrecipitacaoEvapotranspiracaoAnual
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      precipitacaoEvapotranspiracaoAnual(item);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const PrecipitacaoEvapotranspiracaoAnual(),
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
                        ' ${Descricoes.tituloAnual[imgPrecipitacaoEvapotranspiracaoAnual.indexOf(item)]}',
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

class PrecipitacaoEvapotranspiracao extends StatelessWidget {
  const PrecipitacaoEvapotranspiracao({Key? key}) : super(key: key);

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
        title: const Text('Precipitação - Evapotranspiração Potencial (P-ETP)'),
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
                  items:
                      imagensPrecipitacaoEvapotranspiracaoPorEstacao(context),
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
                  items: imagensPrecipitacaoEvapotranspiracaoMensal(context),
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
                  items: imagensPrecipitacaoEvapotranspiracaoAnual(context),
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

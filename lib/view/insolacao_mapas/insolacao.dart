import 'package:climatlas19/ferramentas.dart';
import 'package:climatlas19/view/insolacao_mapas/por_estacao/insolacao_por_estacao.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'anual/insolacao_anual.dart';
import 'mensal/insolacao_mensal.dart';

final List<String> imgInsolacaoAnual = [
  "images/mapas/Figura171/Figura171_page-0001.jpg"
];

final List<String> imgListEstacao = [
  'images/mapas/Figura172/Figura172_page-0001.jpg',
  'images/mapas/Figura173/Figura173_page-0001.jpg',
  'images/mapas/Figura174/Figura174_page-0001.jpg',
  'images/mapas/Figura175/Figura175_page-0001.jpg',
];

final List<String> imgListInsolacaoMensal = [
  'images/mapas/Figura176/Figura176_page-0001.jpg',
  'images/mapas/Figura177/Figura177_page-0001.jpg',
  'images/mapas/Figura178/Figura178_page-0001.jpg',
  'images/mapas/Figura179/Figura179_page-0001.jpg',
  'images/mapas/Figura180/Figura180_page-0001.jpg',
  'images/mapas/Figura181/Figura181_page-0001.jpg',
  'images/mapas/Figura182/Figura182_page-0001.jpg',
  'images/mapas/Figura183/Figura183_page-0001.jpg',
  'images/mapas/Figura184/Figura184_page-0001.jpg',
  'images/mapas/Figura185/Figura185_page-0001.jpg',
  'images/mapas/Figura186/Figura186_page-0001.jpg',
  'images/mapas/Figura187/Figura187_page-0001.jpg',
];

final themeMode = ValueNotifier(2);

List<Widget> imagensInsolacaoPorEstacao(BuildContext context) => imgListEstacao
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      insolacaoEstacao(item);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const InsolacaoPorEstacao(),
                        ),
                      );
                    },
                    child: Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 100, 167, 100),
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

List<Widget> imagensInsolacaoMensal(BuildContext context) =>
    imgListInsolacaoMensal
        .map((item) => Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          insolacaoMes(item);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const InsolacaoMensal(),
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
                                Color.fromARGB(200, 100, 167, 100),
                                Color.fromARGB(200, 123, 196, 100)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            ' ${Descricoes.tituloMes[imgListInsolacaoMensal.indexOf(item)]}',
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

List<Widget> imagensInsolacaoAnual(BuildContext context) => imgInsolacaoAnual
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  insolacaoAnual(item);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const InsolacaoAnual(),
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
                        Color.fromARGB(200, 100, 167, 100),
                        Color.fromARGB(200, 123, 196, 100)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    ' ${Descricoes.tituloAnual[imgInsolacaoAnual.indexOf(item)]}',
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

class Insolacao extends StatelessWidget {
  const Insolacao({Key? key}) : super(key: key);

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

        title: const Text('Insolação'),
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
                  items: imagensInsolacaoPorEstacao(context),
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
                  items: imagensInsolacaoMensal(context),
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
                  items: imagensInsolacaoAnual(context),
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

import 'package:climatlas19/view/precipitacao_mapas/precipitacao.dart';
import 'package:climatlas19/view/sobre_page/sobre_atlas_page.dart';
import 'package:climatlas19/view/sobre_page/more_information_page.dart';
import 'package:climatlas19/view/temperatura_max_abs_mapas/temperatura_maxima_absoluta_page.dart';
import 'package:climatlas19/view/temperatura_min_abs_mapas/temperatura_minima_abs.dart';
import 'view/temperatura_maxima_mapas/temperatura_maxima.dart';
import 'package:climatlas19/view/temperatura_media_mapas/temperatura_media.dart';
import 'package:climatlas19/view/temperatura_minima_mapas/temperatura_minima.dart';
import 'view/umidade_relativa_mapas/umidade_relativa.dart';
import 'package:flutter/material.dart';
import 'package:climatlas19/view/evapotranspiracao_mapas/evapotranspiracao.dart';
import 'view/insolacao_mapas/insolacao.dart';
import 'view/radiacao_solar_mapas/radiacao_solar_global.dart';
import 'view/dif_precip_evap_mapas/dif_precip_evap_page.dart';
import 'view/classificacao_climatica_mapas/classificacao_climatica_page.dart';

class NavegacaoTile extends StatefulWidget {
  const NavegacaoTile({Key? key}) : super(key: key);

  @override
  State<NavegacaoTile> createState() => _NavegacaoTileState();
}

class _NavegacaoTileState extends State<NavegacaoTile> {
  static const CORDAPREGUICA = Colors.black87;

  @override
  Widget build(BuildContext context) => Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            // bottomRight: Radius.circular(40),
          ),
        ),
        child: Material(
          color: Colors.white70,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SingleChildScrollView(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Image.asset(
                          "images/icon_jpg_2.jpg",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "images/idr_logo.jpg",
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),

                  ListTile(
                    title: const Text('Mais informações',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.add_circle,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings:
                              const RouteSettings(name: "/mais_informações"),
                          builder: (context) => const MoreInformationPage(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Sobre o  Atlas Climático',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.my_library_books,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/sobre"),
                          builder: (context) => const SobrePage(),
                        ),
                      );
                    },
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 137, 197, 74),
                    thickness: 1,
                  ),

                  const Text('MAPAS CLIMÁTICOS',
                      style: TextStyle(fontSize: 20, color: CORDAPREGUICA),
                      textAlign: TextAlign.center),
                  const Text('Escolha o mapa climático:',
                      style: TextStyle(fontSize: 16, color: CORDAPREGUICA),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    height: 5,
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 137, 197, 74),
                  //   thickness: 1,
                  // ),

                  // const Text('Temperatura do Ar',
                  //     style: TextStyle(fontSize: 20, color: CORDAPREGUICA),
                  //     textAlign: TextAlign.center),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    title: const Text('Temperatura Média',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.thermostat,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/temp_media"),
                          builder: (context) => const TemperaturaMedia(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Temperatura Mínima',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.thermostat,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/temp_minima"),
                          builder: (context) => const TemperaturaMinima(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Temperatura Mínima Absoluta',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.thermostat,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(
                              name: "/temp_minima_absoluta"),
                          builder: (context) =>
                              const TemperaturaMinimaAbsoluta(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Temperatura Máxima',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.thermostat,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/temp_maxima"),
                          builder: (context) => const TemperaturaMaxima(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: const Text('Temperatura Máxima Absoluta',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.thermostat,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(
                              name: "/temp_maxima_absoluta"),
                          builder: (context) =>
                              const TemperaturaMaximaAbsoluta(),
                        ),
                      );
                    },
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 137, 197, 74),
                  //   thickness: 1,
                  // ),
                  ListTile(
                    title: const Text('Precipitação',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.cloudy_snowing,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/precipitacao"),
                          builder: (context) => const PrecipitacaoMapas(),
                        ),
                      );
                    },
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 137, 197, 74),
                  //   thickness: 1,
                  // ),
                  ListTile(
                    title: const Text('Umidade Relativa',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.water_drop,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/umidade"),
                          builder: (context) => const UmidadeRelativa(),
                        ),
                      );
                    },
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 137, 197, 74),
                  //   thickness: 1,
                  // ),
                  ListTile(
                    title: const Text('Evapotranspiração Potencial (ETP)',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.water_drop,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings:
                              const RouteSettings(name: "/evapotranspiracao"),
                          builder: (context) =>
                              const EvapotranspiracaoPotencial(),
                        ),
                      );
                    },
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 137, 197, 74),
                  //   thickness: 1,
                  // ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/diferenca"),
                          builder: (context) =>
                              const PrecipitacaoEvapotranspiracao(),
                        ),
                      );
                    },
                    title: const Text(
                        'Precipitação-Evapotranspiração Potencial (P-ETP)',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.multiline_chart_outlined,
                      color: CORDAPREGUICA,
                    ),
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 137, 197, 74),
                  //   thickness: 1,
                  // ),
                  ListTile(
                    title: const Text('Radiação Solar Global',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.solar_power,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/radiacao"),
                          builder: (context) => const RadiacaoSolar(),
                        ),
                      );
                    },
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 137, 197, 74),
                  //   thickness: 1,
                  // ),
                  ListTile(
                    title: const Text('Insolação',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.light_mode,
                      color: CORDAPREGUICA,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: "/insolacao"),
                          builder: (context) => const Insolacao(),
                        ),
                      );
                    },
                  ),
                  // const Divider(
                  //   color: Color.fromARGB(255, 137, 197, 74),
                  //   thickness: 1,
                  // ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            settings:
                                const RouteSettings(name: "/classificacao"),
                            builder: (context) =>
                                const ClassificacaoClimatica()),
                      );
                    },
                    title: const Text('Classificação Climática',
                        style: TextStyle(fontSize: 18, color: CORDAPREGUICA)),
                    leading: const Icon(
                      Icons.scatter_plot,
                      color: CORDAPREGUICA,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

//

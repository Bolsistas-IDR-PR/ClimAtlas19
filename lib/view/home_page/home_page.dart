// import 'package:climatlas19/view/temperatura_maxima_mapas/temperatura_maxima.dart';
// import 'package:climatlas19/view/temperatura_media_mapas/temperatura_media.dart';
// import 'package:climatlas19/view/temperatura_minima_mapas/temperatura_minima.dart';
// import 'package:flutter/material.dart';
// import 'package:climatlas19/navigation_drawer.dart';
// import 'package:flutter/services.dart';
// import 'package:url_launcher/link.dart';
// import '../precipitacao_mapas/precipitacao.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int indiceAtual = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//   }
//
//   @override
//   void dispose() {
//     SystemChrome.setPreferredOrientations(
//         [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
//       appBar: AppBar(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(10),
//             bottomRight: Radius.circular(10),
//           ),
//         ),
//         title: const Text('Atlas Climático do Paraná'),
//         centerTitle: true,
//         backgroundColor: Colors.green,
//       ),
//       drawer: const NavegacaoTile(),
//       body: Container(
//         constraints: const BoxConstraints.expand(),
//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 height: 200,
//                 alignment: Alignment.center,
//                 //margin: const EdgeInsets.only(bottom: 24),
//                 child: SizedBox.expand(
//                   child: Image.asset(
//                     'images/idr_logo.jpg',
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ),
//               Link(
//                 uri: Uri.parse(
//                     "http://www.idrparana.pr.gov.br/system/files/publico/agrometeorologia/atlas-climatico/atlas-climatico-do-parana-2019.pdf"),
//                 builder: (_, followLink) => OutlinedButton(
//                     onPressed: followLink,
//                     child: const Text(
//                       'Download PDF: Atlas Climático do Paraná',
//                       style: TextStyle(fontSize: 16),
//                     )),
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               const Text(
//                 'Mapas Favoritos:',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Column(
//                 children: [
//
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth: 500,
//
//
//                     ),
//                     child: Card(
//                       margin: EdgeInsets.only(left: 16, right: 16, top: 8),
//                       elevation: 4,
//                       color: Colors.green,
//                       shadowColor: Colors.green,
//                       child: Padding(
//                         padding: const EdgeInsets.all(4),
//                         child: ListTile(
//                           onTap: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 settings:
//                                     const RouteSettings(name: "/precipitacao"),
//                                 builder: (context) => const PrecipitacaoMapas(),
//                               ),
//                             );
//                           },
//                           leading: const Icon(
//                             Icons.cloudy_snowing,
//                             color: Colors.white,
//                           ),
//                           title: const Text('Precipitação',
//                               style:
//                                   TextStyle(fontSize: 18, color: Colors.white)),
//                         ),
//                       ),
//                     ),
//                   ),
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth: 500,
//
//
//                     ),
//                     child: Card(
//                       margin: EdgeInsets.only(left: 16, right: 16, top: 8),
//                       elevation: 4,
//                       color: Colors.green,
//                       shadowColor: Colors.green,
//                       child: Padding(
//                         padding: const EdgeInsets.all(4),
//                         child: ListTile(
//                           onTap: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 settings:
//                                     const RouteSettings(name: "/temp_media"),
//                                 builder: (context) => const TemperaturaMedia(),
//                               ),
//                             );
//                           },
//                           title: const Text('Temperatura Média',
//                               style:
//                                   TextStyle(fontSize: 18, color: Colors.white)),
//                           leading: const Icon(
//                             Icons.thermostat_outlined,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth: 500,
//
//
//                     ),
//                     child: Card(
//                       margin: EdgeInsets.only(left: 16, right: 16, top: 8),
//                       elevation: 4,
//                       color: Colors.green,
//                       shadowColor: Colors.green,
//                       child: Padding(
//                         padding: const EdgeInsets.all(4),
//                         child: ListTile(
//                             onTap: () {
//                               Navigator.of(context).push(
//                                 MaterialPageRoute(
//                                   settings:
//                                       const RouteSettings(name: "/temp_minima"),
//                                   builder: (context) => const TemperaturaMinima(),
//                                 ),
//                               );
//                             },
//                             leading: const Icon(
//                               Icons.thermostat_outlined,
//                               color: Colors.white,
//                             ),
//                             title: const Text('Temperatura Mínima',
//                                 style: TextStyle(
//                                     fontSize: 18, color: Colors.white))),
//                       ),
//                     ),
//                   ),
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth: 500,
//
//
//                     ),
//                     child: Card(
//                       margin: EdgeInsets.only(left: 16, right: 16, top: 8),
//                       elevation: 4,
//                       shadowColor: Colors.green,
//                       color: Colors.green,
//                       child: Padding(
//                         padding: const EdgeInsets.all(4),
//                         child: ListTile(
//                           onTap: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 settings:
//                                     const RouteSettings(name: "/temp_maxima"),
//                                 builder: (context) => const TemperaturaMaxima(),
//                               ),
//                             );
//                           },
//                           leading: const Icon(
//                             Icons.thermostat_outlined,
//                             color: Colors.white,
//                           ),
//                           title: const Text('Temperatura Máxima',
//                               style:
//                                   TextStyle(fontSize: 18, color: Colors.white)),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 40,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//

import 'package:climatlas19/view/temperatura_maxima_mapas/temperatura_maxima.dart';
import 'package:climatlas19/view/temperatura_media_mapas/temperatura_media.dart';
import 'package:climatlas19/view/temperatura_minima_mapas/temperatura_minima.dart';
import 'package:flutter/material.dart';
import 'package:climatlas19/navigation_drawer.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/link.dart';
import '../precipitacao_mapas/precipitacao.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indiceAtual = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        title: const Text('Atlas Climático do Paraná'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      drawer: const NavegacaoTile(),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  'images/idr_logo.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Link(
              uri: Uri.parse(
                  "http://www.idrparana.pr.gov.br/system/files/publico/agrometeorologia/atlas-climatico/atlas-climatico-do-parana-2019.pdf"),
              builder: (_, followLink) => OutlinedButton(
                onPressed: followLink,
                child: const Text(
                  'Download PDF: Atlas Climático do Paraná',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Mapas Favoritos:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 500,
                          ),
                          child: Card(
                            elevation: 4,
                            color: Colors.green,
                            shadowColor: Colors.green,
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PrecipitacaoMapas(),
                                  ),
                                );
                              },
                              leading: const Icon(
                                Icons.cloudy_snowing,
                                color: Colors.white,
                              ),
                              title: const Text('Precipitação',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white)),
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 500,
                          ),
                          child: Card(
                            elevation: 4,
                            color: Colors.green,
                            shadowColor: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: ListTile(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TemperaturaMedia(),
                                    ),
                                  );
                                },
                                title: const Text('Temperatura Média',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                leading: const Icon(
                                  Icons.thermostat_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 500,
                          ),
                          child: Card(
                            elevation: 4,
                            color: Colors.green,
                            shadowColor: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: ListTile(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TemperaturaMinima(),
                                      ),
                                    );
                                  },
                                  leading: const Icon(
                                    Icons.thermostat_outlined,
                                    color: Colors.white,
                                  ),
                                  title: const Text('Temperatura Mínima',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white))),
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 500,
                          ),
                          child: Card(
                            elevation: 4,
                            shadowColor: Colors.green,
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: ListTile(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TemperaturaMaxima(),
                                    ),
                                  );
                                },
                                leading: const Icon(
                                  Icons.thermostat_outlined,
                                  color: Colors.white,
                                ),
                                title: const Text('Temperatura Máxima',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

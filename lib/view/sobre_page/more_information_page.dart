import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class MoreInformationPage extends StatelessWidget {
  const MoreInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: const Text('Mais Informações'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
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
            Divider(
              thickness: 1,
              color: Colors.green,
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                            '\O Atlas Climático do Estado do Paraná é uma publicação de atualização das normais climatológicas de diversos elementos meteorológicos.\n'),
                        Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            'Para mais informações acesse o site clicando no link abaixo:'),
                        Link(
                          uri: Uri.parse(
                              "https://www.idrparana.pr.gov.br/Pagina/Atlas-Climatico"),
                          builder: (_, followLink) => OutlinedButton(
                            onPressed: followLink,
                            child: const Text(
                              'IDR-Paraná: Agrometeorologia e Clima',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            '\nIDR-Paraná no YouTube:'),
                        Link(
                          uri: Uri.parse(
                              "https://www.youtube.com/channel/UCZDsqSxJMnEsPg8Jm4FH8dQ"),
                          builder: (_, followLink) => GestureDetector(
                            onTap: followLink,
                            child: Image.asset(
                              'images/icon_youtube.png',
                              scale: 1.5,
                            ),
                          ),
                        ),
                        Text(
                          '\nLocalização:',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.normal),
                            'Rodovia Celso Garcia Cid, km 375 - 86047-902 - Londrina - PR\n Tel.: 43 3376-2000\n'
                            'Mapa:'),
                        Link(
                          uri: Uri.parse(
                              "https://www.google.com/maps/place/Agronomic+Institute+of+Paran%C3%A1+-+IAPAR/@-23.3542723,-51.1618911,17z/data=!3m1!4b1!4m5!3m4!1s0x94eb43274cebbc15:0x99905119b56270ee!8m2!3d-23.3542723!4d-51.1618911"),
                          builder: (_, followLink) => IconButton(
                            onPressed: followLink,
                            icon: Icon(
                              Icons.location_on_outlined,
                              color: Colors.red,
                              size: 32,
                            ),
                          ),
                        ),
                        Text(
                          '\nContato:',
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.normal),
                            'idrparana@idr.pr.gov.br\n'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}

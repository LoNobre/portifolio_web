import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationsCollege extends StatefulWidget{
  const InformationsCollege({super.key});

  @override
  State<InformationsCollege> createState() => _InformationsCollegeState();
}

class _InformationsCollegeState extends State<InformationsCollege> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.grey,
          ),
          onPressed: () => GoRouter.of(context).go('/'),
        ),
        title: Text("Lorrane Nobre"),
        actions: [
          TextButton(
            child: const Text("Telegram"),
            onPressed: () => _launchInBrowser(Uri(
              scheme: 'https',
              host: 't.me',
              path: '/LorraneNobre',
            )),
          ),
          TextButton(
            child: const Text("LinkedIn"),
            onPressed: () => _launchInBrowser(Uri(
              scheme: 'https',
              host: 'www.linkedin.com',
              path: '/in/lorrane-nobre',
            )),
          ),
          TextButton(
            child: const Text("E-mail"),
            onPressed: () => _launchInBrowser(Uri(
              scheme: 'mailto',
              host: 'lo.nobrem@gmail.com',
              path: 'subject=Contato portifólio Web&body=Detalhe aqui qual bug você encontrou: ',
            )),
          ),
          TextButton(
            child: const Text("GitHub"),
            onPressed: () => _launchInBrowser(Uri(
              scheme: 'https',
              host: 'www.github.com',
              path: '/LoNobre',
            )),
          ),
        ],
      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: size.height * 0.8,
              width: size.width * 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text('Formação acadêmica',
                        style: TextStyle(
                          fontSize: size.width * 0.035,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Expanded(flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.width * 0.04,
                                  backgroundImage: ExactAssetImage("assets/images/logo_computacao.jpg"),
                                ),
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.width * 0.04,
                                  backgroundImage: ExactAssetImage("assets/images/logo_ufpa.jpg"),
                                ),
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.width * 0.04,
                                  backgroundImage: ExactAssetImage("assets/images/logo_eetepa.jpg"),
                                ),
                              ],
                            ),
                          ),
                          Expanded(flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Atual',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.02,
                                  ),
                                ),
                                Text('2023',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.02,
                                  ),
                                ),
                                Text('2015',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(flex: 7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Mestranda no Programa de Pós Graduação em Ciência da Computação - Universidade Federal do Pará',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.015
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text('Bacharelado em Engenharia da Computação - Universidade Federal do Pará',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.015,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text('Técnico em Informática - EEETEPA Icoaraci',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.015,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 40,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Colors.deepPurple,
                                            elevation: 15,
                                            shadowColor: Colors.grey),
                                        child: const Text(
                                          'Tela inicial',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        onPressed: () => GoRouter.of(context).go('/'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}
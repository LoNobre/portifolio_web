import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';


class About extends StatefulWidget{
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

  class _AboutState extends State<About> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: (
            SizedBox(
              height: size.height * 0.8,
              width: size.width * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('Quem é a Lorrane?',
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        Expanded(flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.width * 0.09,
                                  backgroundImage: ExactAssetImage("assets/images/about.jpg"),
                                ),
                              ],
                            ),
                          ),
                        Expanded(flex: 4, child: Container(
                          child: Center(
                            child: SizedBox(
                              height: size.height * 0.4,
                              width: size.width * 0.45,
                              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: size.width * 0.018,
                                ),
                              ),
                            ),
                          ),
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
                ]
              )
            )
            ),
          )
        ],
      ),

    );
  }
}
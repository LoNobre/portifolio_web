import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'components/customWidgets.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Lorrane Nobre", context),
      body: Column(
        children: [
          Center(
            child: SizedBox (
              height: size.height * 0.8,
              width: size.width * 0.7,
              child: Row(
                children: [
                  Expanded(flex: 3,
                    child: Column(
                      children: [
                        Expanded(flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.of(context).size.width * 0.09,
                                backgroundImage: ExactAssetImage("assets/images/profile.jpg"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(flex: 1,
                          child: Center(
                            heightFactor: MediaQuery.of(context).size.width * 0.001,
                            child: Text("Lorrane Nobre",
                              style: TextStyle(
                                  fontSize: size.width * 0.023,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),
                            ),
                          ),
                        ),
                        Expanded(flex: 2,
                          child: Center(
                            heightFactor: MediaQuery.of(context).size.width * 0.001,
                            child: Text("Engenheira da Computação, \ndesenvolvedora mobile e \nUX Designer.",
                              style: TextStyle(
                                  fontSize: size.width * 0.015,
                                  color: Colors.white70),
                            ),
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
                        if (MediaQuery.of(context).size.width < 1000)
                          Expanded(flex: 2, child: Container()),
                        Expanded(flex: 4, child: Container(
                          child: Center(
                            child: SizedBox(
                              height: size.height * 0.4,
                              width: size.width * 0.45,
                              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: size.width * 0.02,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        Expanded(
          flex: 8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(32.0),
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
                              'Projetos',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () => GoRouter.of(context).go('/projects'),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                elevation: 15,
                                shadowColor: Colors.grey),
                            child: const Text(
                              'Formação acadêmica',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () => GoRouter.of(context).go('/informationsCollege'),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                elevation: 15,
                                shadowColor: Colors.grey),
                            child: const Text(
                              'Habilidades',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () => GoRouter.of(context).go('/skills'),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                elevation: 15,
                                shadowColor: Colors.grey),
                            child: const Text(
                              'Cursos',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () => GoRouter.of(context).go('/courses'),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                                elevation: 15,
                                shadowColor: Colors.grey),
                            child: const Text(
                              'Sobre',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () => GoRouter.of(context).go('/about'),
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
    );
  }
}
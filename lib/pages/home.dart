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
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Lorrane Nobre - Portifólio", context),
      body: Center (
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 15,
                      shadowColor: Colors.grey),
                  child: Text(
                    'Projetos',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () => GoRouter.of(context).go('/projects'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 15,
                      shadowColor: Colors.grey),
                  child: Text(
                    'Formação acadêmica',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () => GoRouter.of(context).go('/informationsCollege'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 15,
                      shadowColor: Colors.grey),
                  child: Text(
                    'Habilidades',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () => GoRouter.of(context).go('/skills'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 15,
                      shadowColor: Colors.grey),
                  child: Text(
                    'Cursos',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () => GoRouter.of(context).go('/courses'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      elevation: 15,
                      shadowColor: Colors.grey),
                  child: Text(
                    'Sobre',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () => GoRouter.of(context).go('/about'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
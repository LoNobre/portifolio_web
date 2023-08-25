import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';

import 'pages/about.dart';
import 'pages/contacts.dart';
import 'pages/skills.dart';
import 'pages/home.dart';
import 'pages/informationsCollege.dart';
import 'pages/projects.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    final router = GoRouter(
      initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => const MaterialPage(
              child: Home(),
            ),
          ),
          GoRoute(
            path: '/projects',
            pageBuilder: (context, state) => const MaterialPage(
              child: Projects(),
            ),
          ),
          GoRoute(
            path: '/contacts',
            pageBuilder: (context, state) => const MaterialPage(
              child: Contacts(),
            ),
          ),
          GoRoute(
            path: '/skills',
            pageBuilder: (context, state) => const MaterialPage(
              child: Skills(),
            ),
          ),
          GoRoute(
            path: '/informationsCollege.dart',
            pageBuilder: (context, state) => const MaterialPage(
              child: InformationsCollege(),
            ),
          ),
          GoRoute(
            path: '/about',
            pageBuilder: (context, state) => const MaterialPage(
              child: About(),
            ),
          ),
        ],
    );

    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}

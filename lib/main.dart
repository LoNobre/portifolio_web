import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';

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
              child: TelaInicial(),
            ),
          ),
          GoRoute(
            path: '/telaA',
            pageBuilder: (context, state) => const MaterialPage(
              child: TelaA(),
            ),
          ),
          GoRoute(
            path: '/telaA/telaB',
            pageBuilder: (context, state) => const MaterialPage(
              child: TelaB(),
            ),
          ),
        ]
    );
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela inicial'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () => GoRouter.of(context).go('/telaA'),
            child: Text('VAI PRA TELA A!')),
      ),
    );
  }
}

class User extends StatelessWidget{
  const User({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela A'),
      ),
      body: Column(
        children: [
          const Center(
              child: Text('Estamos na Tela A.')),
          TextButton(
              onPressed: () => GoRouter.of(context).go('/users/details'),
              child: const Text('VAI PARA A TELA ')),
        ],
      ),
    );
  }
}

class Details extends StatelessWidget{
  const Details({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela detalhes'),
      ),
      body: const Center(
          child: Text(id)),
    ),
    );
  }
}

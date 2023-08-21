import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';

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
            path: '/users',
            pageBuilder: (context, state) => const MaterialPage(
              child: User(),
            ),
          ),
          GoRoute(
            path: '/users/details/:id',
            pageBuilder: (context, state) {
              String id = state.pathParameters['id']!;
              return MaterialPage(
                child: Details(
                  id: id,
                ),
              );
            },
          )
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
            onPressed: () => GoRouter.of(context).go('/users'),
            child: Text('VAI PRA TELA DE USUÁRIOS')),
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
        title: const Text(' TELA DE USUÁRIOS'),
      ),
      body: Column(
        children: [
          const Center(
              child: Text('Estamos na Tela DE USUÁRIOS.')),
          TextButton(
              onPressed: () => GoRouter.of(context).go('/users/details/id'),
              child: const Text('VAI PARA A TELA DE DETALHES')),
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
        title: const Text('DETALHES'),
      ),
      body: Center(child: Text(id)),
    );
  }
}

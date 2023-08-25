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
            path: '/description',
            pageBuilder: (context, state) => const MaterialPage(
              child: Description(),
            ),
          ),
          GoRoute(
            path: '/informationsCollege',
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

class About extends StatelessWidget{
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TELA DE SOBRE'),
      ),
      body: Column(
        children: [
          const Center(
              child: Text('Estamos na tela de SOBRE')),
          TextButton(onPressed: () => GoRouter.of(context).go('/about'),
              child: const Text('VAI PARA A TELA DE PROJETOS')),
        ],
      ),
    );
  }
}

class InformationsCollege extends StatelessWidget{
  const InformationsCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TELA DE INFORMAÇÕES ACADEMICAS'),
      ),
      body: Column(
        children: [
          const Center(
              child: Text('Estamos na tela de informações acadêmicas')),
          TextButton(onPressed: () => GoRouter.of(context).go('/informationsCollege'),
              child: const Text('VAI PARA A TELA DE INFORMAÇÕES')),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget{
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TELA DE DESCRIÇÕES'),
      ),
      body: Column(
        children: [
          const Center(
              child: Text('Estamos na tela de Descrições')),
          TextButton(onPressed: () => GoRouter.of(context).go('/description'),
              child: const Text('VAI PARA A TELA DE DESCRIÇÕES')),
        ],
      ),
    );
  }
}

class Contacts extends StatelessWidget{
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TELA DE CONTATOS'),
      ),
      body: Column(
        children: [
          const Center(
              child: Text('Estamos na tela de CONTATOS')),
          TextButton(onPressed: () => GoRouter.of(context).go('/contacts'),
              child: const Text('VAI PARA A TELA DE CONTATOS')),
        ],
      ),
    );
  }
}

class Projects extends StatelessWidget{
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TELA DE PROJETOS'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Estamos na tela de projetos realizados')),
            TextButton(onPressed: () => GoRouter.of(context).go('/projects'),
                child: const Text('VAI PARA A TELA DE PROJETOS')),
        ],
      ),
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
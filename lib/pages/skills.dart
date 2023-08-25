import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Skills extends StatelessWidget{
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TELA DE HABILIDADES E EXPERIÊNCIAS'),
      ),
      body: Column(
        children: [
          const Center(
              child: Text('Estamos na tela de habilidades e experiências')),
          TextButton(onPressed: () => GoRouter.of(context).go('/informationsCollege'),
              child: const Text('VAI PARA A TELA DE INFORMAÇÕES')),
        ],
      ),
    );
  }
}
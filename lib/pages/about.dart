import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
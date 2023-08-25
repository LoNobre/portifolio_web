import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InformationsCollege extends StatelessWidget{
  const InformationsCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TELA DE PROJETOS'),
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
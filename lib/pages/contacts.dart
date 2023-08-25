import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomWidgets {
  AppBar getAppBarMenu(String title, BuildContext context){
    return AppBar(
      title: Text(title),
      actions: [
        TextButton(
            onPressed: () => GoRouter.of(context).go('/'),
            child: const Text("Tela Inicial"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/projects'),
          child: const Text("Projetos"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/about'),
          child: const Text("Sobre"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/informationsCollege'),
          child: const Text("Formação acadêmica"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/skills'),
          child: const Text("Habilidades"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/contacts'),
          child: const Text("Contatos"),
        ),
      ],
    );
  }
}
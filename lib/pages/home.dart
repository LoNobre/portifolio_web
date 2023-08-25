import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela inicial'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () => GoRouter.of(context).go('/'),
            child: Text('Tela inicial')),
      ),
    );
  }
}
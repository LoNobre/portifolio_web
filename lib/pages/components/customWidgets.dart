import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomWidgets {
  AppBar getAppBarMenu(String title, BuildContext context){
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.home_outlined,
          color: Colors.grey,
        ),
        onPressed: () => GoRouter.of(context).go('/'),
      ),
      title: Text(title),
      actions: [
        TextButton(
          child: const Text("Telegram"),
          onPressed: () { },
        ),
        TextButton(
          child: const Text("LinkedIn"),
          onPressed: () { },
        ),
        TextButton(
          child: const Text("E-mail"),
          onPressed: () { },
        ),
        TextButton(
          child: const Text("GitHub"),
          onPressed: () { },
        ),
      ],
    );
  }
}
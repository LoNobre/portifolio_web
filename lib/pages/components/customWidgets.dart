import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomWidgets {
  AppBar getAppBarMenu(String title, BuildContext context){
    return AppBar(
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
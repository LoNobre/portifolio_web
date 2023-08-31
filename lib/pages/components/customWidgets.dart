import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomWidgets {
  AppBar getAppBarMenu(String title, BuildContext context, Function(String) onPressed){
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
          onPressed: () {},
        ),
        TextButton(
          child: const Text("LinkedIn"),
          onPressed: onPressed('https://www.linkedin.com/in/lorrane-nobre'),
        ),
        TextButton(
          child: const Text("E-mail"),
          onPressed: () { },
        ),
        TextButton(
          child: const Text("GitHub"),
          onPressed: () => GoRouter.of(context).go('https://github.com/LoNobre'),
        ),
      ],
    );
  }
}
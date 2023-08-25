import 'package:flutter/material.dart';
import 'components/customWidgets.dart';

class Contacts extends StatelessWidget{
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Contatos", context),
      body: const Center (
        child: Text("Body Contatos"),
      ),
    );
  }
}
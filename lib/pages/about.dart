import 'package:flutter/material.dart';
import 'components/customWidgets.dart';

class About extends StatelessWidget{
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Sobre", context),
      body: const Center (
        child: Text("Body Sobre"),
      ),
    );
  }
}
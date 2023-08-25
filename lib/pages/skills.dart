import 'package:flutter/material.dart';
import 'components/customWidgets.dart';

class Skills extends StatelessWidget{
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Habilidades", context),
      body: const Center (
        child: Text("Body Habilidades"),
      ),
    );
  }
}
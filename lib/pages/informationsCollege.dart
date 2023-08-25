import 'package:flutter/material.dart';
import 'components/customWidgets.dart';

class InformationsCollege extends StatelessWidget{
  const InformationsCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Formação academica", context),
      body: const Center (
        child: Text("Body Formação academica"),
      ),
    );
  }
}
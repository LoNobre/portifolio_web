import 'package:flutter/material.dart';
import 'components/customWidgets.dart';

class Courses extends StatelessWidget{
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Cursos", context),
      body: const Center (
        child: Text("Body Cursos"),
      ),
    );
  }
}
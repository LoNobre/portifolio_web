import 'package:flutter/material.dart';
import 'components/customWidgets.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Tela inicial", context),
      body: const Center (
        child: Text("Body Tela inicial"),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'components/customWidgets.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Lorrane Nobre", context),
      body: Center(
        child: SizedBox (
          height: size.height * 0.7,
          width: size.width * 0.7,
          child: Row(
            children: [
              const Expanded(flex: 3,
                child: Column(
                  children: [
                    Expanded(flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 180,
                            backgroundImage: ExactAssetImage("assets/images/profile.jpg"),
                          ),
                        ],
                      ),
                  ),
                  Expanded(flex: 1,
                    child: Center(
                      child: Text("Lorrane Nobre",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                  Expanded(flex: 2,
                    child: Center(
                      child: Text("Engenheira da Computação, \ndesenvolvedora mobile e \nUX Designer.",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                ],
                ),
              ),
              Expanded(flex: 7, child: Container(color: Colors.orange)),
            ],
          ),
        ),
      ),
    );
  }
}
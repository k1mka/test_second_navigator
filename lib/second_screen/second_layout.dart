import 'package:flutter/material.dart';
import 'package:test_second_navigator/config/routes.dart';

class SecondLayout extends StatelessWidget {
  const SecondLayout(this.goToRoute, {super.key});

  final Function goToRoute;

  static const buttonText = "Return to the Home Screen";
  static const nameOfScreen = 'Second Screen';
  static const testStyle = TextStyle(color: Colors.green, fontSize: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              nameOfScreen,
              style: testStyle,
            ),
          ),
          const SizedBox(height: 48),
          ElevatedButton(onPressed: ()=> goToRoute(AllRoutes.home),
              child: const Text(buttonText)),
        ],
      ),
    );
  }
}

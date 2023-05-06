import 'package:flutter/material.dart';
import 'package:test_second_navigator/config/routes.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout(this.goToRoute, {super.key});

  final Function goToRoute;

  static const buttonText = "Navigate to the First Screen";
  static const nameOfScreen = 'Home Screen';
  static const testStyle = TextStyle(color: Colors.red, fontSize: 24.0);
  static const buttonStyle = TextStyle(color: Colors.red, fontSize: 24.0);

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
          ElevatedButton(
            onPressed: () => goToRoute(AllRoutes.first),
            child: const Text(buttonText),
          ),
        ],
      ),
    );
  }
}

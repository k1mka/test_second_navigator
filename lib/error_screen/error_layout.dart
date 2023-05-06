import 'package:flutter/material.dart';

class ErrorLayout extends StatelessWidget {
  const ErrorLayout(this.goToRoute, {super.key});

  final Function goToRoute;

  static const buttonText = "Return back";
  static const nameOfScreen = 'Error screen';
  static const testStyle = TextStyle(color: Colors.red, fontSize: 24.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
          const Center(
            child: Text(
              nameOfScreen,
              style: testStyle,
            ),
          ),
          const SizedBox(height: 48),
          ElevatedButton(onPressed: ()=> Navigator.of(context).pop(),
              child: const Text(buttonText)),
        ],
      ),
    );
  }
}

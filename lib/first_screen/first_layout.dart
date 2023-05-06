import 'package:flutter/material.dart';
import 'package:test_second_navigator/config/route_config.dart';
import 'package:test_second_navigator/config/routes.dart';

class FirstLayout extends StatefulWidget {
  const FirstLayout(this.goToRoute, {super.key});

 final Function goToRoute;

  static const buttonText = "Navigate to the second screen";
  static const nameOfScreen = 'First Screen';
  static const testStyle = TextStyle(color: Colors.blue, fontSize: 24.0);

  @override
  State<FirstLayout> createState() => _FirstLayoutState();
}

class _FirstLayoutState extends State<FirstLayout> {
  @override
  Widget build(BuildContext context) {
    ShopListRouteConfig(null, false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              FirstLayout.nameOfScreen,
              style: FirstLayout.testStyle,
            ),
          ),
          const SizedBox(height: 48),
          ElevatedButton(onPressed: ()=> widget.goToRoute(AllRoutes.second),
              child: const Text(FirstLayout.buttonText)),
        ],
      ),
    );
  }
}


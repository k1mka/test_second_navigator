import 'package:flutter/material.dart';
import 'package:test_second_navigator/second_screen/second_layout.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen(this.goToRoute, {super.key});

  final Function goToRoute;

  @override
  Widget build(BuildContext context) {
    return SecondLayout(goToRoute);
  }
}

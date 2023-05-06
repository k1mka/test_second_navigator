import 'package:flutter/material.dart';
import 'package:test_second_navigator/first_screen/first_layout.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.goToRoute, {super.key});

  final Function goToRoute;

  @override
  Widget build(BuildContext context) {
    return FirstLayout(goToRoute);
  }
}

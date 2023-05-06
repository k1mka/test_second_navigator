import 'package:flutter/material.dart';
import 'package:test_second_navigator/home_screen/home_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.goToRoute, {super.key});

  final Function goToRoute;

  @override
  Widget build(BuildContext context) {
     return HomeLayout(goToRoute);
  }
}

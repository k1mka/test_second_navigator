import 'package:flutter/material.dart';
import 'package:test_second_navigator/error_screen/error_layout.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen(this.goToRoute, {super.key});

  final Function goToRoute;

  @override
  Widget build(BuildContext context) {
    return ErrorLayout(goToRoute);
  }
}

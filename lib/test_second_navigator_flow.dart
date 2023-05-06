import 'package:flutter/material.dart';
import 'package:test_second_navigator/config/route_config.dart';
import 'package:test_second_navigator/config/routes.dart';
import 'package:test_second_navigator/error_screen/error_screen.dart';
import 'package:test_second_navigator/first_screen/first_screen.dart';
import 'package:test_second_navigator/home_screen/home_screen.dart';
import 'package:test_second_navigator/second_screen/second_screen.dart';

// **The section referenced by main
class TestSecondNavigatorFlow extends StatefulWidget {
  const TestSecondNavigatorFlow({Key? key}) : super(key: key);

  @override
  State<TestSecondNavigatorFlow> createState() => _TestSecondNavigatorFlowState();
}

class _TestSecondNavigatorFlowState extends State<TestSecondNavigatorFlow> {
  late ShopListRouteConfig shopListRouteConfig;

  // **Responds which screen to show first
  String thisRoute = AllRoutes.home;

  // **If true, we will show an error screen regardless of which route is specified during initialization
  bool is404 = false;

  // **A function that puts a specific route that we get from different screens
  void goToRoute(String route) => setState(() => thisRoute = route);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: [
          // **The main logic in which we decide which route should refer to which screen
          // **If this route is not set, this page will be shown by default
          MaterialPage(child: HomeScreen(goToRoute)),
          if(thisRoute == AllRoutes.first) MaterialPage(child: FirstScreen(goToRoute)),
          if(thisRoute == AllRoutes.second) MaterialPage(child: SecondScreen(goToRoute)),
          if(is404 == true) MaterialPage(child: ErrorScreen(goToRoute)),
        ],
        // **Used to define custom logic when returning to the previous screen or when closing the current screen.
        onPopPage: (route, result){
          if (route.didPop(result)) return true;
          return false;
        },
      ),
    );
  }
}

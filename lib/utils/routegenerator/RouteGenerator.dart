import 'package:flutter/material.dart';
import 'package:helloworld/WeightProjectScreen.dart';
import 'package:helloworld/ui/error/ErrorScreen.dart';
import 'package:helloworld/ui/login/LoginScreen.dart';
import 'package:helloworld/ui/planetweight/PlanetWeightScreen.dart';
import 'package:helloworld/ui/splash/SplashScreen.dart';
import 'package:helloworld/utils/Constants.dart';

///  class for route navigation in all over the project
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case Constants.ROUTE_SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Constants.ROUTE_LOGIN:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Constants.ROUTE_PLANET_WEIGHT:
        return MaterialPageRoute(builder: (_) => PlanetWeightScreen());
      case Constants.ROUTE_WEIGHT:
        // you can make argument check here
        return MaterialPageRoute(builder: (_) => WeightProjectScreen());

      default:
        return MaterialPageRoute(builder: (_) => ErrorScreen());
    }
  }

  static void navigate(
      BuildContext buildContext, String route, Object arguments) {
    Navigator.of(buildContext).pushNamed(route, arguments: arguments);
  }
}

import 'package:flutter/material.dart';
import 'package:helloworld/WeightProjectScreen.dart';
import 'package:helloworld/home/HomeScreen.dart';
import 'package:helloworld/task2/PlanetWeightScreen.dart';
import 'package:helloworld/task3/screen/MovieListScreen.dart';
import 'package:helloworld/ui/cartapp/CartDemoScreen.dart';
import 'package:helloworld/ui/cartapp/statemanagment_via_provider/CartDemoScreenV2.dart';
import 'package:helloworld/ui/error/ErrorScreen.dart';
import 'package:helloworld/ui/login/LoginScreen.dart';
import 'package:helloworld/ui/profilelist/ProfileListScreen.dart';
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
      case Constants.ROUTE_HOME:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Constants.ROUTE_PLANET_WEIGHT:
        return MaterialPageRoute(builder: (_) => PlanetWeightScreen());
      case Constants.ROUTE_CART_APP:
        return MaterialPageRoute(builder: (_) => CartDemoScreen());
      case Constants.ROUTE_CART_APP_PROVIDER:
        return MaterialPageRoute(builder: (_) => CartDemoScreenV2());

      case Constants.ROUTE_PROFILE_LIST:
        return MaterialPageRoute(builder: (_) => ProfileListScreen());
      case Constants.ROUTE_MOVIE_LIST:
        return MaterialPageRoute(builder: (_) => MovieListScreen(args));
//        {
//          if (args is String)
//            return MaterialPageRoute(builder: (_) => MovieListScreen(args));
//          else
//            return MaterialPageRoute(builder: (_) => ErrorScreen());
//        }
      case Constants.ROUTE_WEIGHT:
        // you can make argument check here
        return MaterialPageRoute(builder: (_) => WeightProjectScreen());

      default:
        return MaterialPageRoute(builder: (_) => ErrorScreen());
    }
  }

  static void navigate(
      BuildContext buildContext, String route, Object arguments) {
    if (route == Constants.ROUTE_HOME) {
      Navigator.of(buildContext)
          .pushReplacementNamed(route, arguments: arguments);
    } else {
      Navigator.of(buildContext).pushNamed(route, arguments: arguments);
    }
  }
}

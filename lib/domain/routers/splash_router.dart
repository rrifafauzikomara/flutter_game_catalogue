import 'package:core/external/route_strings.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class SplashRouter {
  goToHomeScreen();
}

class SplashRouterImpl extends SplashRouter {
  @override
  goToHomeScreen() => Modular.to
      .pushReplacementNamed(Modular.get<RouteStrings>().homeScreenRoute);
}

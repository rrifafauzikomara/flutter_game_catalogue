import 'package:flutter_modular/flutter_modular.dart';
import 'package:core/external/route_strings.dart';

abstract class GameListRouter {
  goToGameDetail(String gameId);
}

class GameListRouterImpl extends GameListRouter {
  @override
  goToGameDetail(String gameId) =>
      Modular.link.pushNamed(Modular.get<RouteStrings>().gameDetailRoute,
          arguments: gameId);
}

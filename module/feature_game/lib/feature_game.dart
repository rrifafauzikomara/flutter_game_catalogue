import 'package:feature_game/presentation/pages/game_list_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeatureGameModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (_, __) => GameListScreen(),
        ),
      ];
}

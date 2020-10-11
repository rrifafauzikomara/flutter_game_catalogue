import 'package:core/external/route_strings.dart';
import 'package:feature_contributor/presentation/pages/profile_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeatureContributorModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((_) => RouteStrings()),
      ];

  @override
  List<ModularRouter> get routers => [
    ModularRouter(
      '/',
      child: (_, __) => ProfileScreen(),
    ),
  ];
}

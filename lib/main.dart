import 'package:feature_game/feature_game.dart';
import 'package:flutter/material.dart';
import 'package:core/external/route_strings.dart';
import 'package:flutter_game_catalogue/presentation/blocs/splash_bloc.dart';
import 'package:flutter_game_catalogue/presentation/pages/splash_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
  ));
}

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((_) => RouteStrings()),
        Bind((_) => SplashBloc()),
      ];

  @override
  Widget get bootstrap => MyApp();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.get<RouteStrings>().splashScreenRoute,
          child: (context, args) => SplashScreen(),
        ),
        ModularRouter(
          Modular.get<RouteStrings>().homeScreenRoute,
          module: FeatureGameModule(),
        ),
      ];
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Catalogue',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Modular.get<RouteStrings>().splashScreenRoute,
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}

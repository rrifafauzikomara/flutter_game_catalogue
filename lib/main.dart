import 'package:flutter/material.dart';
import 'package:flutter_game_catalogue/external/route_strings.dart';
import 'package:flutter_game_catalogue/presentation/pages/splash_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
  ));
}

class AppModule extends MainModule{
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => MyApp();

  @override
  List<ModularRouter> get routers => [
    ModularRouter(
      RouteStrings.splashScreenRoute,
      child: (context, args) => SplashScreen(),
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
      initialRoute: RouteStrings.splashScreenRoute,
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}

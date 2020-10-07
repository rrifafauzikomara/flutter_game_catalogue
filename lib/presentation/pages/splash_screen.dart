import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_game_catalogue/domain/routers/splash_router.dart';
import 'package:core/external/image_strings.dart';
import 'package:flutter_game_catalogue/presentation/blocs/splash_bloc.dart';
import 'package:flutter_game_catalogue/presentation/blocs/splash_event.dart';
import 'package:flutter_game_catalogue/presentation/blocs/splash_state.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashRouter _splashRouter = SplashRouterImpl();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<SplashBloc>()..add(LoadSplashScreen()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashLoadedState) {
            _splashRouter.goToHomeScreen();
          }
        },
        child: Scaffold(
          body: BlocBuilder<SplashBloc, SplashState>(
            builder: (context, state) => Center(
              child: Image.asset(
                ImageStrings.logo,
                scale: 3.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

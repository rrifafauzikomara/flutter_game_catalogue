import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_game_catalogue/presentation/blocs/splash_event.dart';
import 'package:flutter_game_catalogue/presentation/blocs/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitialState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is LoadSplashScreen) {
      yield SplashLoadingState();
      Future.delayed(Duration(seconds: 2));
      yield SplashLoadedState();
    }
  }
}

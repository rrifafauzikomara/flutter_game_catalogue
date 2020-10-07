import 'package:equatable/equatable.dart';

abstract class SplashState extends Equatable {
  const SplashState();
}

class SplashInitialState extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashLoadingState extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashLoadedState extends SplashState {
  @override
  List<Object> get props => [];
}

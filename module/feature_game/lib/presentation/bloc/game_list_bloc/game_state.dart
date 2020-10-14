import 'package:equatable/equatable.dart';
import 'package:feature_game/domain/entities/game_response.dart';

abstract class GameState extends Equatable {
  const GameState();
}

class GameInitialState extends GameState {
  @override
  List<Object> get props => [];
}

class GameLoadingState extends GameState {
  @override
  List<Object> get props => [];
}

class GameLoadedState extends GameState {
  final GameResponse gameResponse;

  GameLoadedState({this.gameResponse});

  @override
  List<Object> get props => [gameResponse];
}

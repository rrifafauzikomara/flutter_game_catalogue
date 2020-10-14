part of 'game_detail_bloc.dart';

abstract class GameDetailState extends Equatable {}

class GameDetailInitialState extends GameDetailState {
  @override
  List<Object> get props => [];
}

class GameDetailLoadingState extends GameDetailState {
  @override
  List<Object> get props => [];
}

class GameDetailLoadedState extends GameDetailState {
  final GameDetailResponse gameDetailResponse;

  GameDetailLoadedState({this.gameDetailResponse});

  @override
  List<Object> get props => [gameDetailResponse];
}

part of 'game_detail_bloc.dart';

abstract class GameDetailEvent extends Equatable {}

class LoadGameDetail extends GameDetailEvent {
  final String gameId;

  LoadGameDetail({this.gameId});

  @override
  List<Object> get props => [gameId];
}

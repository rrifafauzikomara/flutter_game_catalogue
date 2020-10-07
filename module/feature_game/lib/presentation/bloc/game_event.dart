import 'package:equatable/equatable.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();
}

class LoadGameList extends GameEvent {
  @override
  List<Object> get props => [];
}

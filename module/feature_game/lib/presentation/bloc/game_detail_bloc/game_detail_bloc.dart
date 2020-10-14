import 'package:equatable/equatable.dart';
import 'package:feature_game/domain/usecases/game_detail_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:feature_game/domain/entities/game_detail_response.dart';

part 'game_detail_event.dart';

part 'game_detail_state.dart';

class GameDetailBloc extends Bloc<GameDetailEvent, GameDetailState> {
  GameDetailUseCase gameDetailUseCase;

  GameDetailBloc({@required this.gameDetailUseCase})
      : super(GameDetailInitialState());

  @override
  Stream<GameDetailState> mapEventToState(GameDetailEvent event) async* {
    if (event is LoadGameDetail) {
      yield GameDetailLoadingState();
      GameDetailResponse gameDetailResponse =
          await gameDetailUseCase.getDetailGame(event.gameId);
      yield GameDetailLoadedState(gameDetailResponse: gameDetailResponse);
    }
  }
}

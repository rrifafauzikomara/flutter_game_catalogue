import 'package:feature_game/domain/entities/game_response.dart';
import 'package:feature_game/domain/usecases/game_use_case.dart';
import 'package:feature_game/presentation/bloc/game_event.dart';
import 'package:feature_game/presentation/bloc/game_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameBLoc extends Bloc<GameEvent,GameState>{
  GameUseCase gameUseCase;
  GameBLoc({@required this.gameUseCase}) : super(GameInitialState());


  @override
  Stream<GameState> mapEventToState(GameEvent event) async*{
    if(event is LoadGameList){
      yield GameLoadingState();
      GameResponse gameResponse = await gameUseCase.getGameList();
      yield GameLoadedState(gameResponse: gameResponse);
    }
  }

}
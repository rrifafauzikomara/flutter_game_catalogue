import 'package:feature_game/domain/entities/game_response.dart';
import 'package:feature_game/domain/repositories/game_repository.dart';

abstract class GameListUseCase {
  Future<GameResponse> getGameList();
}

class GameListUseCaseImpl extends GameListUseCase {
  GameRepository gameRepository;

  GameListUseCaseImpl({this.gameRepository});

  @override
  Future<GameResponse> getGameList() => gameRepository.getGameList();
}

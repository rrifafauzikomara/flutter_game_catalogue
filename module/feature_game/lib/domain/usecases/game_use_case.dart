import 'package:feature_game/domain/entities/game_response.dart';
import 'package:feature_game/domain/repositories/game_repository.dart';

abstract class GameUseCase {
  Future<GameResponse> getGameList();
}

class GameUseCaseImpl extends GameUseCase {
  GameRepository gameRepository;

  GameUseCaseImpl({this.gameRepository});

  @override
  Future<GameResponse> getGameList() => gameRepository.getGameList();
}

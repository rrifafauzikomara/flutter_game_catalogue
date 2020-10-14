import 'package:feature_game/domain/entities/game_detail_response.dart';
import 'package:feature_game/domain/repositories/game_repository.dart';

abstract class GameDetailUseCase {
  Future<GameDetailResponse> getDetailGame(String gameId);
}

class GameDetailUseCaseImpl extends GameDetailUseCase {
  GameRepository gameRepository;

  GameDetailUseCaseImpl({this.gameRepository});

  @override
  Future<GameDetailResponse> getDetailGame(String gameId) =>
      gameRepository.getDetailGame(gameId);
}

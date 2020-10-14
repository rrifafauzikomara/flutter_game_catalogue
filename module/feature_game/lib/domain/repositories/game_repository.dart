import 'package:feature_game/domain/entities/game_detail_response.dart';
import 'package:feature_game/domain/entities/game_response.dart';

abstract class GameRepository {
  Future<GameResponse> getGameList();

  Future<GameDetailResponse> getDetailGame(String gameId);
}

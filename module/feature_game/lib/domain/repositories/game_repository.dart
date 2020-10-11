import 'package:feature_game/domain/entities/game_response.dart';

abstract class GameRepository {
  Future<GameResponse> getGameList();
}
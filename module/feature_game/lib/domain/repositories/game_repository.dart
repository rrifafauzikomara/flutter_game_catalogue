import 'package:feature_game/domain/entities/GameResponse.dart';

abstract class GameRepository {
  Future<GameResponse> getGameList();
}
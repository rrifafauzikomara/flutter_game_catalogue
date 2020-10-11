import 'package:feature_game/data/remote/dataresources/game_api_provider.dart';
import 'package:feature_game/domain/entities/game_response.dart';
import 'package:feature_game/domain/repositories/game_repository.dart';
import 'package:flutter/foundation.dart';

class GameRepositoryImpl extends GameRepository {
  final GameApiProvider gameApiProvider;

  GameRepositoryImpl({@required this.gameApiProvider});

  @override
  Future<GameResponse> getGameList() => gameApiProvider.getGameList();
}

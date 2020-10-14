import 'package:dio/dio.dart';
import 'package:feature_game/domain/entities/game_detail_response.dart';
import 'package:feature_game/domain/entities/game_response.dart';
import 'package:flutter/foundation.dart';

abstract class GameApiProvider {
  Future<GameResponse> getGameList();

  Future<GameDetailResponse> getDetailGame(String gameId);
}

class GameApiProviderImpl extends GameApiProvider {
  final Dio dio;

  GameApiProviderImpl({@required this.dio});

  @override
  Future<GameResponse> getGameList() async {
    try {
      Response _response = await dio.get("/games?pages=1&page_size=20");
      GameResponse _gameResponse = GameResponse.fromJson(_response.data);
      return _gameResponse;
    } on DioError catch (e) {
      return e.error;
    }
  }

  @override
  Future<GameDetailResponse> getDetailGame(String gameId) async {
    try {
      Response _response = await dio.get("/games/$gameId");
      GameDetailResponse _gameResponse =
          GameDetailResponse.fromJson(_response.data);
      return _gameResponse;
    } on DioError catch (e) {
      return e.error;
    }
  }
}

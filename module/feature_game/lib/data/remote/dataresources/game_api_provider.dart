import 'package:dio/dio.dart';
import 'package:feature_game/domain/entities/GameResponse.dart';
import 'package:flutter/foundation.dart';

abstract class GameApiProvider {
  Future<GameResponse> getGameList();
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
}

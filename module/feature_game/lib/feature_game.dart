import 'package:core/external/api_constant.dart';
import 'package:dio/dio.dart';
import 'package:feature_game/data/remote/dataresources/game_api_provider.dart';
import 'package:feature_game/data/remote/repositories/game_repository_impl.dart';
import 'package:feature_game/domain/usecases/game_use_case.dart';
import 'package:feature_game/presentation/bloc/game_bloc.dart';
import 'package:feature_game/presentation/pages/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeatureGameModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((_) => ApiConstant()),
        Bind((_) =>
            Dio(BaseOptions(baseUrl: Modular.get<ApiConstant>().baseUrl))),
        Bind((_) => GameApiProviderImpl(dio: Modular.get<Dio>())),
        Bind((_) => GameRepositoryImpl(
            gameApiProvider: Modular.get<GameApiProviderImpl>())),
        Bind((_) =>
            GameUseCaseImpl(gameRepository: Modular.get<GameRepositoryImpl>())),
        Bind((_) => GameBLoc(gameUseCase: Modular.get<GameUseCaseImpl>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (_, __) => HomeScreen(),
        ),
      ];
}

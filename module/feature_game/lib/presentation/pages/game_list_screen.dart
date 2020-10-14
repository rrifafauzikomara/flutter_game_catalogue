import 'package:feature_game/domain/routers/game_list_router.dart';
import 'package:feature_game/external/date_formatter.dart';
import 'package:feature_game/presentation/bloc/game_bloc.dart';
import 'package:feature_game/presentation/bloc/game_event.dart';
import 'package:feature_game/presentation/bloc/game_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GameListScreen extends StatelessWidget {
  final GameListRouter _gameListRouter = GameListRouterImpl();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<GameBLoc>()..add(LoadGameList()),
      child: Scaffold(
        backgroundColor: Colors.white38,
        appBar: AppBar(
          elevation: 0.0,
        ),
        body: BlocBuilder<GameBLoc, GameState>(builder: (context, state) {
          if (state is GameLoadedState) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: state.gameResponse.results.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(16.0, 8.0, 16.9, 0.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.5),
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () => _gameListRouter.goToGameDetail(
                          "${state.gameResponse.results[index].id}"),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              state.gameResponse.results[index].backgroundImage,
                              height: 100.0,
                              width: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    state.gameResponse.results[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text(
                                        DateFormatter.dateFormatter(state
                                            .gameResponse
                                            .results[index]
                                            .released),
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.lightBlue,
                                            fontSize: 14.0)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16.0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text(
                                              "${state.gameResponse.results[index].rating}/5.00",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.amber,
                                                  fontSize: 14.0)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}

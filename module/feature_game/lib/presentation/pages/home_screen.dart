import 'package:feature_game/presentation/bloc/game_bloc.dart';
import 'package:feature_game/presentation/bloc/game_event.dart';
import 'package:feature_game/presentation/bloc/game_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<GameBLoc>()..add(LoadGameList()),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<GameBLoc, GameState>(builder: (context, state) {
          if (state is GameLoadedState) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: state.gameResponse.results.length,
                itemBuilder: (context, index) {
                  return Text(state.gameResponse.results[index].name);
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

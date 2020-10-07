import 'package:flutter/material.dart';
import 'package:flutter_game_catalogue/external/image_strings.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImageStrings.logo,scale: 3.0,),
      ),
    );
  }
}

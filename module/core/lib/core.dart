import 'package:flutter_modular/flutter_modular.dart';
import 'package:core/external/image_strings.dart';

class CoreModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((_) => ImageStrings())
  ];

  @override
  List<ModularRouter> get routers => [];

}
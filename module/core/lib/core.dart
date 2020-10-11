import 'package:flutter_modular/flutter_modular.dart';
import 'package:core/external/image_strings.dart';
import 'external/api_constant.dart';
import 'external/route_strings.dart';

class CoreModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((_) => ApiConstant()),
    Bind((_) => ImageStrings()),
    Bind((_) => RouteStrings()),
  ];

  @override
  List<ModularRouter> get routers => [];

}